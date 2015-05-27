

//****************************************************************
//*  Name    : LCD Bezel                                         *
//*  Author  : Robert Joseph Korn                                *
//*  Notice  : Copyright (c) 2015 Open Valley Consulting Corp    *
//*          : All Rights Reserved                               *
//*  Date    : 5/22/15                                           *
//*  Version : 1.0                                               *
//*  Notes   :                                                   *
//*          :                                                   *
//****************************************************************

$fn=40;

width=100.25;
height=45.25;
offset=5;
thickness=2;
winwidth=88;
winheight=31;
winthickness=3;
holewidth=94.25;
holeheight=37;
holesize=3;

difference(){

	union(){

		hull(){
		
			minkowski(){
				cube([width,height,1],center=true);
				cylinder(d=1,h=1,center=true);
			}
		
			translate([0,0,thickness]) cube([width + offset,height + offset,1],center=true);
		}

		translate([0,0,3]) cube([winwidth + winthickness,winheight + winthickness,8],center=true);

	}

		cube([winwidth,winheight,20],center=true);

		translate([holewidth/2,holeheight/2,0]) cylinder(d=holesize,h=20,center=true);
		translate([-holewidth/2,holeheight/2,0]) cylinder(d=holesize,h=20,center=true);
		translate([holewidth/2,-holeheight/2,0]) cylinder(d=holesize,h=20,center=true);
		translate([-holewidth/2,-holeheight/2,0]) cylinder(d=holesize,h=20,center=true);

}