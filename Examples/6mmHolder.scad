difference() {
    
    //Base     X, Y, Z               X, Y, Z
    translate([0, 0, 0])cube(size = [40,20,20]);
    
    //Hole1    X,  Y,  Z
    translate([10, 10, 0])cylinder(h = 40, r = 4);
    
    //Hole2    X,  Y,  Z
    translate([30, 10, 0])cylinder(h = 40, r = 4);
    
    
    //Hole3    X,  Y,  Z
    rotate([90, 0, 0]) translate([20, 10, 0])cylinder(h = 200, r = 4);
    
    
}

//http://blog.cubehero.com/2013/11/19/know-only-10-things-to-be-dangerous-in-openscad/