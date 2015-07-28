
module ConnectorTwo (){

difference() {
    
    //Base     X, Y, Z               X, Y, Z
    translate([0, 0, 0])cube(size = [42,20,8]);
    
    //Hole1    X,  Y,  Z
    translate([4.5, 10, 0])cylinder(h = 40, r = 3);
    
    //Hole2    X,  Y,  Z
    translate([35.5, 10, 0])cylinder(h = 40, r = 3);
    
    //Cube    X,  Y,  Z
    translate([9, 0, 0]) cube(size = [21,20,5]);
    
    
}

}

rotate([180, 0, 0]){

//         X, Y, Z
translate([0, 0, 0])ConnectorTwo();

translate([-44, 0, 0])ConnectorTwo();

translate([0, 25, 0])ConnectorTwo();

translate([-44, 25, 0])ConnectorTwo();
}


//http://blog.cubehero.com/2013/11/19/know-only-10-things-to-be-dangerous-in-openscad/

//https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modules