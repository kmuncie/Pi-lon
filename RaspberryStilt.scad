pegDia = 2.75;
baseHeight = 15;
baseDiameter = 20;
pegHeight = 3;
padHeight = 8;
padDiameter = 6.2;
$fn = 100;

module pin() {
    // Cone and stopper cylinder
    cylinder(h=pegHeight + baseHeight + padHeight, r=(pegDia/2));
    cylinder(baseHeight + padHeight, padDiameter/2, padDiameter/2);
    cylinder(baseHeight, baseDiameter/2, pegDia/2);

}     

pin();