pegDia = 2.75; 

module pin() {
    difference() {
        cylinder(h=35, r=(pegDia/2), $fn=20);
        translate([0,1,33]) rotate([90,0,0]) {
            cylinder(5, .75, $fn=10, center=true);
        }
    }
    translate([0,0,29]) {
        cylinder(h=1,r=(pegDia*1.2),1,$fn=20);
    }
    difference() {
        cylinder(pegDia*3,15,$fn=40);
        translate([0,0,-1]) {
            cylinder(pegDia*3,15,$fn=40);
        }
    }   
}

pin();
