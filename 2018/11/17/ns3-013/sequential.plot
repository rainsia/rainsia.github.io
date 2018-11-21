set term pngcairo lw 2 
set output "sequential.png"

n=100 #number of intervals
max=2.0 #max value
min=13.0 #min value
width=1 #interval width

#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0

set boxwidth width*0.2
set style fill solid 0.5 # fill style

#count and plot
plot "sequential.txt" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"green" notitle

