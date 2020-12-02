ssc install g538schemes, // then go to preferences - > change scheme to 538w 
// (this is a really nice one and is based on the data work @ fivethirtyeight.com)


// just loading some dummy data
sysuse nlsw88.dta, clear
gen ln_wage = ln(wage) 



// histogram of wages between black - white workers
	   twoway ///
	   histogram ln_wage if union==0, width(0.06) color(538r%40) lwidth(vthin) || /// adding colour and adjusting histogram bar width & colour opacity
     histogram ln_wage if union==1, width(0.06) color(538b%40) lwidth(vthin) /// adding colour and adjusting opacity
	   plotregion(margin(zero)) /// removing plot margins
	   ylab(0(0.2)1, glstyle(dot) tposition(inside) labsize(vsmall)) /// changing gridlines to dots, 
	   /// adding tick position inside graph and making labels small
	   xline(1.889772 , lcolor(black%100)) /// can also do this by creating a local
	   xlab(0(1)4, nogrid labsize(vsmall)) /// removing grid lines for x axis, making label small - change label colour with labcolor(black)
	   yscale(range(0 1) lstyle(solid) lcolor(538axis) lwidth(thin)) /// axis range, colours, and line width
	   xscale(range(0 4) lstyle(solid) lcolor(538axis) lwidth(thin)) /// axis range, colours, and line width
	   legend(order(1 "nonunion" 0 "union")) /// adding labels to legend
	   legend(position(0) bplacement(ne) region(color(none))) /// adjusting legend position and pushing it to the north-east corner ("ne")
	   xtitle("Log(Wage)", size(vsmall)) // adding x title
	   

// many of these functions work for other graph types too - you can also look here for more:
// https://www.stata.com/manuals/g.pdf
	   

