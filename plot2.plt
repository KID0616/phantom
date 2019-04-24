set terminal x11
#set terminal png 
#set output 'test_4.png'
set datafile separator ","

set title "test of gnuplot script"
plot "test1.csv" every ::1 using 1:2 w lp
replot "test1.csv" every ::1 using 1:3 w lp
replot "test1.csv" every ::1 using 1:4 w lp

#set terminal x11
#set output
pause -1    # 改行キーが押されるまで待つ