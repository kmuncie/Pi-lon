pegDia = 2.75;
pegHeight = 3;
stopDia = 6.2;
stopHeight = 5;
baseDia = 20;
baseHeight = 15;
$fn = 100;

module pin() {
    
    // Base Cone
    cylinder(h=baseHeight, r1=(baseDia/2), r2=(stopDia/2));
    
    // Stopper that Rpi rests on
    translate([0,0,baseHeight]) {
        cylinder(h=stopHeight, r=(stopDia/2));
    }
    
    // Mounting hole peg
    translate([0,0,baseHeight+stopHeight]) {
        cylinder(h=pegHeight, r=(pegDia/2));
    }
    
}

pin();