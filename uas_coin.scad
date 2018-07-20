RezN = 100;
RezS = 50;
Scale = 1.5;

module tor(){
  rotate_extrude(convexity = 10, $fn=RezN)
  translate([16.5, 0, 0])
  circle(r = 3, $fn = RezS);
}

module coin(){
  scale ([Scale, Scale, Scale]) union(){
    difference(){
      intersection(){
        difference(){
          union(){
            rotate_extrude(convexity = 10, $fn=RezN)
            translate([10, 0, 0])
            circle(r = 5, $fn = RezS);
            
            cylinder(h=10,d=20,$fn=RezN, center=true);
            
          }
          rotate([90,0,0]) tor();
          rotate([0,0,30]) rotate([90,0,0]) tor();
          rotate([0,0,60]) rotate([90,0,0]) tor();
          rotate([0,0,90]) rotate([90,0,0]) tor();
          rotate([0,0,-30]) rotate([90,0,0]) tor();
          rotate([0,0,-60]) rotate([90,0,0]) tor();
        }
        cylinder(h=6,d=200,$fn=RezN, center=true);
      }
      translate([0,0,20]) sphere(d=40, $fn=RezN, $fs=RezS);
    }


    translate([0,0,-1]) linear_extrude(height = 4) text("{0}", font = "White Rabbit", halign="center", valign="center", size=10);

            rotate_extrude(convexity = 10, $fn=RezN)
            translate([11.5, 0, 0])
            circle(r = 3, $fn = RezS);
  }
}

coin();

