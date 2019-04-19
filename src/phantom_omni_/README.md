# phantom_omni
Phantom Omni Manipulator Training for SRD laboratory  
Contact: Kengkij Promsutipong (k.promsutipong@srd.mech.tohoku.ac.jp)  
	 Shuhei Yamaguchi (s.yamaguchi@srd.mech.tohoku.ac.jp)

## Instruction

1. Install Ubuntu Xenial 16.04 (Dual-boot / VMWare)

2. Install ROS Kinetic  
Please refer to http://wiki.ros.org/kinetic/Installation/Ubuntu  
On Terminal
> sudo apt-get update  
> sudo apt-get install ros-kinetic-desktop-full

3. Make your workspace  
Please refer to http://wiki.ros.org/catkin/Tutorials/create_a_workspace

4. Clone this repository  
> cd catkin_ws/src  
> sudo apt-get install git  
> git clone https://github.com/ken-excel/phantom_omni

5. Install dependencies and libraries  
> cd catkin_ws/  
> rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y  
> sudo apt-get install libncurses5-dev libncursesw5-dev

6. Compile the code  
> catkin_make

7. Debugging  
Once you have debugged the code (omni_angle/src/main.cpp)
> roslaunch phantom_omni omni.launch  
> rosrun omni_angle omni_angle.  

The phantom omni should move all the joints 30 degrees.
