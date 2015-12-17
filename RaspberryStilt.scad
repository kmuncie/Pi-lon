pegRDia = 2.75; 

module pin() {
    difference() {
        cylinder(h=35, r=(pegDia/2), $fn=20);
        translate([0,1,33]) rotate([90,0,0]) {
            cylinder(h=1, r=.5, 2, $fn=20);
        }
    }
    translate([0,0,29]) {
        cylinder(h=1, r=3,1,$fn=20);
    }
    cylinder(h=1, r=pegDia,3,6,$fn=40);    
}

pin();
