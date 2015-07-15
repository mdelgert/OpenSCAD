////////////////////////
//  Desk Nameplate
//
//  Oct 8, 2013
//  RLazure
//
//  This desktop nameplate is intended to be
//  printed in 2 colours.
//
//  Use the Pause @ZPos feature in the Replicator's
//  version 7.3 firmware.
//
//  This code is inspired in part
//			by TheNewHobbyist's
//  input parameters and label length calculations
//
//////////////////////////////

// include <write.scad>  // for home computer
include <Write.scad>

///// inputs ////////////////

// What would you like to label?
label_text = "Phoenix 3D Printing";

// What style of characters?
font = "Letters.dxf"; // ["BlackRose.dxf":Black Rose,"knewave.dxf":Knewave,"Letters.dxf":Letters,"orbitron.dxf":Orbitron]

// How big?
font_size = 12; //[8:20]

// Want to space out that text?
letter_spacing = 1; // // [0.9:Tight,1:Default,1.5:Wide]

// How much space on the ends?
end_space = 3; //[0:10]


///////////////////  calculations  //////////////

width = (.6875*font_size*letter_spacing); // Find width of each character
totalwidth = width * len(label_text); // Find total width of text

length_extrude = totalwidth+(end_space*width);
textz_start_pos = totalwidth/2;
textx_start_pos = (24-font_size)/2 + font_size;


/////// debug ////////

echo("len label text= ",len(label_text));
echo("totalwidth= ",totalwidth);
echo("width = ",width);
echo("length_extrude = ",length_extrude);
echo("textz_start_pos = ",textz_start_pos);

///////////////////////////////////////
/////// modules ///////////////////////
//////////////////////////////////////

module name_plate(){

union() {

//	linear_extrude(length_extrude, center = true, convexity = 10, twist = 0)
   linear_extrude(height=length_extrude, center = true)
	polygon([[8,0],[0,16],[24,16],[16,0]], [[0,1,2,3]]);  // profile shape


	translate([textx_start_pos,15.5,textz_start_pos]) rotate([0,90,90])
	write(label_text,t=3.5,h=font_size,font=font,center=false);
	}
	}

//////////////////////////////////////////////////////

// orient on platform

rotate([90,0,270])
translate([-12,0,0]) name_plate();

// preview[view:south, tilt:top]

