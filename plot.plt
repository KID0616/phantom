set terminal x11 1
#set terminal png 
#set output 'test_3.png'
set datafile separator ","

set view equal xyz
set title "test of gnuplot script"
splot "test1.csv" every ::1 using 5:6:7 w l
#replot "test1.csv" every ::1 using 1:11 with lines
#replot "test1.csv" every ::1 using 1:11 with lines

pause -1    # 改行キーが押されるまで待つ

set terminal x11 2
set view equal xyz
set title "test of gnuplot script"
set multiplot layout 3,1

plot "test1.csv" every ::1 using 1:2 w l
plot "test1.csv" every ::1 using 1:3 w l
plot "test1.csv" every ::1 using 1:4 w l

unset multiplot

set out
set term pop

#set terminal x11
#set output
pause -1    # 改行キーが押されるまで待つ