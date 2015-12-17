pegDia = 2.75;
baseHeight = 10;
baseDiameter = 18;
pegHeight = 4;
padHeight = 4;
padDiameter = 6.2;
cornerRadius = 1.5;
$fn = 100;

module pin() {
    // Cone and stopper cylinder
    translate([0,0,cornerRadius * 1.75]) {
        cylinder(h=pegHeight + baseHeight + padHeight, r=(pegDia/2));
        cylinder(baseHeight + padHeight, padDiameter/2, padDiameter/2);
        cylinder(baseHeight, baseDiameter/2, pegDia/2);
    }
    
    // Bottom donut
    translate([0,0,cornerRadius]) {
        rotate_extrude(convexity = 6) translate([baseDiameter/2.25, 0, 0])   circle(r = cornerRadius);
    }

}

pin();