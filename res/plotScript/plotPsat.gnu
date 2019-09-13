# Gnuplot plot file to plot Psat(T)

reset
set style data lp

set key autotitle columnhead
set key bottom left
set xlabel "Temperature T (k)"
set title "Saturated pressure Psat (bar)"

plot "Psat_th.txt" u 1:($2*0.001) title "Theoric", "../input/Liq-vap/Psat_exp.txt" u 1:($2*0.001) title "Experimental"
pause(-1)