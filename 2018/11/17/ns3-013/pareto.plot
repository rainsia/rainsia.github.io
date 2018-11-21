set term pngcairo lw 2 
set output "pareto.png"

width=0.5

#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0

set boxwidth 5
set style fill solid 0.5 # fill style

set yrange [0:5]

#count and plot
plot "pareto.txt" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"green" notitle

