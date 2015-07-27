
 module ConnectorOne (){

difference() {
    
    //Base     X, Y, Z               X, Y, Z
    translate([0, 0, 0])cube(size = [40,20,8]);
    
    //Hole1    X,  Y,  Z
    translate([8, 10, 0])cylinder(h = 40, r = 4);
    
    //Hole2    X,  Y,  Z
    translate([32, 10, 0])cylinder(h = 40, r = 4);
    
    
    //Hole3    X,  Y,  Z
    translate([20, 20, -1]) rotate([90, 0, 0]) cylinder(h = 100, r = 4);
    
    
}

}

//         X, Y, Z
translate([0, 0, 0])ConnectorOne();

translate([-42, 0, 0])ConnectorOne();

translate([0, 25, 0])ConnectorOne();

translate([-42, 25, 0])ConnectorOne();



//http://blog.cubehero.com/2013/11/19/know-only-10-things-to-be-dangerous-in-openscad/

//https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modules