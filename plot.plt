set terminal x11
#set terminal png 
#set output 'test_3.png'
set datafile separator ","

set title "test of gnuplot script"
splot "test1.csv" every ::1 using 5:6:7 w lp
#replot "test1.csv" every ::1 using 1:11 with lines
#replot "test1.csv" every ::1 using 1:11 with lines

#set terminal x11
#set output
pause -1    # 改行キーが押されるまで待つ