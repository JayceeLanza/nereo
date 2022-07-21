numPointsA= 25 //here I am generating 25 points

Roi.getBounds(x,y,w,h);
count = 0;
dotSize=25
while (count < numPointsA) { 
	roiManager( "select", 0 ); // select the first, ROI
	x1 = random() * w + x;
	y1 = random() * h + y;
	if (selectionContains(x1, y1) == true ) { // if coordinates are inside the "big" ROI 
		makeOval(x1, y1, dotSize,dotSize);
      run("Fill");
   		}
  	 	 run("Select None");
		count++; // ONLY increase count when point is added
	}
