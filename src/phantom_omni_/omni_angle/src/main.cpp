#include <ros/ros.h>
#include <math.h> 
#include <signal.h>
#include <phantom_omni/OmniFeedback.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Vector3.h>

using namespace std;

//bool型　trueがfalseをここに格納
bool interrupted = false;


//シグナルハンドラ
void mySigintHandler(int sig)
{
  interrupted = true; 
}
 


//ここからグローバル変数

//Theta　各関節の角度
double t1, t2, t3;

//Link's length　各リンクの長さ
double a2 = 0.135;
double a3 = 0.135;

//Link's Moment of Inertia　慣性モーメント
double Ix = 0.035 + 0.1;
double Iy = 0.035;
double Iz = 0.1;

//Proportional Gain　比例ゲイン
double Kpx = 15000;
double Kpy = 36000;
double Kpz = 30000;

//Derivative Gain　微分ゲイン
double Kdx = 500.0;
double Kdy = 2600;
double Kdz = 300;

//cur = Current, An=Angle, Pos = Position, Vel = Velocity, Acc = Acceleration, prev = Previous, Des = Destination
//Vector3の各要素の変数の型はfloat型
geometry_msgs::Vector3 curAn, curPos, initialPos, finalPos, initialAngle, finalAn, curAnVel, curAnAcc, prevAn, prevAnVel;

geometry_msgs::Vector3 curDesPos, prevDesPos, curDesAn, curDesAnVel, curDesAnAcc, prevDesAn, prevDesAnVel, prevDesAnAcc;

//前の時間を保存するための変数
ros::Time prevTime;

//ここまでグローバル変数





//ここからサブ関数
//現在の関節角度を計算
float angleValue(float x0, float xf, float t0, float tf, float t)  //(初期関節角度、目標関節角度、開始時刻、総移動時間、経過時刻)
{
  t = t-t0;		//経過時間
  tf = tf-t0;		//総移動時間
  //経過時間が総移動時間より少ない時に現在の関節角度を計算
  if (t <= tf){
    return t*(xf-x0)/(tf-t0) + x0;
  } 
  else {			//総移動時間を過ぎた時は目標位置を返す
    return xf;
  }
}

//逆運動学によって各関節角度を計算
geometry_msgs::Vector3 inverse_kin(geometry_msgs::Vector3 pos)
{
	//Inverse kinematics[!]
	geometry_msgs::Vector3 angles;
	return angles;
}

//順運動学によって端点座標を計算
geometry_msgs::Vector3 forward_kin(geometry_msgs::Vector3 angles)
{
	//Forward kinematics[!]
	geometry_msgs::Vector3 pos;
	pos.x = 0;
	pos.y = 0;
	pos.z = 0;
	return pos;
}

//実機のセンサーから関節角度をコールバックする関数
//時間と現在の関節角度から、現在の関節速度・加速度を計算
void angle_callback(const sensor_msgs::JointState::ConstPtr msg)		//msg:取得した関節
{
	//Callback joint_state -- from actual manipulator 
	ros::Time t = ros::Time::now();   //現在の時間を取得

	curAn.x = msg->position[0];   // "->"ドットアロー演算子。ここではmsg.position[0]と同じ意味
	curAn.y = msg->position[1];
	curAn.z = msg->position[2]-(M_PI/2); //!!!

	//時間をdouble型に変換する
	double diff = t.toSec() - prevTime.toSec();   //現在の時間一つ前の時間 = diff

	//現在の関節速度を計算(関節角度の差を時間で割ることによって微分)
	curAnVel.x = (curAn.x - prevAn.x) / diff;
	curAnVel.y = (curAn.y - prevAn.y) / diff;
	curAnVel.z = (curAn.z - prevAn.z) / diff;

	//現在の関節加速度を計算(関節速度の差を時間で割ることによって微分)
	curAnAcc.x = (curAnVel.x - prevAnVel.x) / diff;
	curAnAcc.y = (curAnVel.y - prevAnVel.y) / diff;
	curAnAcc.z = (curAnVel.z - prevAnVel.z) / diff;

	//現在のパラメータを過去のパラメータに書き換え
	prevAn = curAn;  //角度
	prevAnVel = curAnVel;	//角速度
	prevTime = t;	//時間

	//現在の位置座標を逆運動学関数inverse_kin()によって計算
	curPos = inverse_kin(curAn);
}



//トルク、力の計算を行う。引数は現時刻と前のループの時刻
phantom_omni::OmniFeedback get_torque(ros::Time time_now, ros::Time time_last)
{
	//計算式

	phantom_omni::OmniFeedback msg;   //msg OmniFeedback:すべてVector3型　force position torqe thetas
	msg.thetas = curDesAn;		//
	msg.thetas.z = (msg.thetas.z+M_PI/2); 
	return msg;
}

//ここまでサブ関数





//main関数
int main(int argc, char **argv)
{
	ros::init( argc, argv, "omni_haptic_node");		//初期化　ノード名は"omni_hptic_node"
	
	//ノードハンドラの宣言
	ros::NodeHandle n;

	//"omni_force_feedbackをpublishする"
	ros::Publisher pub_ = n.advertise<std_msgs:://何かを入れる>("omni1_force_feedback", 1000); 

	//t-1の時間を取得
	prevTime = ros::Time::now();

	//omni1_joint_statesから関節角度の情報を取得する。さらにangle_callbackを実行
	ros::Subscriber haptic_sub = n.subscribe("omni1_joint_states", 100, angle_callback);

	ros::Rate loop_rate(1);		//ノードの動作周波数設定
	

	phantom_omni::OmniFeedback msg;		//msg OmniFeedback:すべてVector3型　force position torqe thetas


	ros::Time t_0 = ros::Time::now()+ ros::Duration(3.0);   //開始時間のセット(現時刻から3秒後)
	ros::Time t_f = t_0 + ros::Duration(5.0);		//終了時間のセット(開始から5秒後)

	bool setup = false;

	ros::Time prevTimeLoop =ros::Time::now();

	//列挙型:複数の定数をまとめる ここでは状態のステータスを表す
	enum State{STANDBY, JOINTMOVE, POSMOVE, CIRCLE, LINE, FINISH};
	State curState = STANDBY;		//状態ステータスをスタンバイに
	while (ros::ok()&& !interrupted)		//ノード実行中でなおかつinterrupted = falseの時ループを実行する
	{
		signal(SIGINT, mySigintHandler);  //SIGINT:外部の割り込みを表す。この時interrupted = trueとする
		//現時刻を取得
		ros::Time t = ros::Time::now();

		//curStateの持つ状態ステータスに応じた処理を行う
		switch (curState){
		case STANDBY:		//スタンバイ状態のとき
		
			t_0 = ros::Time::now()+ ros::Duration(30.0);
			t_f = t_0 + ros::Duration(5.0);
			curState = JOINTMOVE;		//状態をSTANDBYからJOINTMOVEに変え,breakする。
		break;

		//JOINTMOVEの時の処理
		case JOINTMOVE:
		
		if(!setup){				//setup=falseのとき
			ROS_INFO("Starting Motion - Joint Mode");		//ログの出力
			//初期位置にアームをセットする
			initialPos = curPos;
			initialAn.x = 0;
			initialAn.y = 0;
			initialAn.z = -M_PI/2;

			setup = true;		//セットアップ完了

			t_f = t_0 + ros::Duration(3.0);
			//目標角度のセット
			finalAn.x = M_PI/6;		
			finalAn.y = M_PI/6;
			finalAn.z = M_PI/6 - M_PI/2;
		}
		if (t > t_0 && t < t_f){		//現時刻が設定した時間内のとき
			//前回の移動目票位置・関節角度・角速度・角加速度=今回の移動目票位置・関節角度・角速度・角加速度
			prevDesAn = curDesAn;		
			prevDesPos = curDesPos;
			prevDesAnVel = curDesAnVel;
			prevDesAnAcc = curDesAnAcc;

			//現在の移動目標位置・関節角度・角速度・角加速度を計算
			curDesAn.x = angleValue(initialAn.x,finalAn.x, 0, (t_f-t_0), (t-t_0));
			curDesAn.y = angleValue(initialAn.y,finalAn.y, 0, (t_f-t_0), (t-t_0));
			curDesAn.z = angleValue(initialAn.z,finalAn.z, 0, (t_f-t_0), (t-t_0));


			msg = get_torque(t,prevTimeLoop);

		   }
		   else if(t > t_f){		//もし時間が過ぎていた時
			curState = FINISH;		//状態ステータスをFINISHに変更
			setup = false;		//setupをfalseに変更=次回実行時は初期位置に戻る
			ROS_INFO("Target reached");		//ログの出力
		   }
		break;		//ループの終了

	default:
	
		cout<<"Hello World"<<endl;
	break;
  }  
  pub.publish(msg);		//msgは力、位置、トルク、関節角度をpublishする
   
  prevTimeLoop = t;		//prevTimeLoopに現時刻を入れる
  ros::spinOnce();
  loop_rate.sleep();

//強制停止が入ったとき入力トルクを0にする。
  if(interrupted)
  {
    msg.torque.x = 0;
    msg.torque.y = 0;
    msg.torque.z = 0;
    pub.publish(msg);
    ros::shutdown();
  }

}
  return 0;
}
