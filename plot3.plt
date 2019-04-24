set terminal x11
set datafile separator ","

set title "test of gnuplot script"
plot "test1.csv" every ::1 using 1:4 w lp
#replot "test1.csv" every ::1 using 1:3 with lines
#replot "test1.csv" every ::1 using 1:4 with lines

pause -1    # 改行キーが押されるまで待つ