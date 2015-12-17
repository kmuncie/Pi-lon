pegDia = 2.75; 

module rcylinder(r1=10,r2=10,h=10,b=2)
{translate([0,0,-h/2]) hull(){rotate_extrude() translate([r1-b,b,0]) circle(r = b); rotate_extrude() translate([r2-b, h-b, 0]) circle(r = b);}}

module pin() {
    
    cylinder(h=25, r=(pegDia/2), $fn=20);
    
    translate([0,0,20]) {
        cylinder(h=1,r=3.1,1,$fn=20);
    }
     
    translate([0,0,4.5]) rcylinder(r1=2,h=-5,b=1,$fn=30);    
    
}

pin();
