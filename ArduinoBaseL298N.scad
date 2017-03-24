unoHeight = 53.3;
unoWidth = 68.6;
unoHoleMargin = 2.5;
unoHoleDLx = 14;
unoHoleDLy = unoHoleMargin;
unoHoleULx = 14 + 1.3;
unoHoleULy = unoHeight - unoHoleMargin;
unoHoleURx = 14 + 1.3 + 50.8;
unoHoleURy = unoHoleMargin + 5.1 + 27.9;
unoHoleDRx = 14 + 1.3 + 50.8;
unoHoleDRy = unoHoleMargin + 5.1;
holeRadius = 1.75;
thickness = 2;

difference() {
    union() {
        translate([0, (unoHeight - 43) / 2, 0]) {
            // L298N base
            difference() {
                union() {
                    cube([unoWidth, 43, thickness]);
                    cube([6, 6, thickness+2]);
                    translate([0, 43-6, 0]) {
                        cube([6, 6, thickness+3]);
                    }
                    translate([43-6, 43-6, 0]) {
                        cube([6, 6, thickness+3]);
                    }
                    translate([43-6, 0, 0]) {
                        cube([6, 6, thickness+3]);
                    }
                }
                translate([6, 6, -0.01]) {
                    cube([unoWidth - 12, 31, thickness + 0.02]);
                }  
            }
            translate([3, 3, -0.01]) {
                //hex_nut(nut_diameter,nut_height,nut_thread_step,nut_step_shape_degrees,nut_thread_outer_diameter,nut_resolution);
                //nutM3x5();
            }
        }
        // Arduino UNO base
        translate([unoHoleDLx-unoHoleDLy, 0, 0]) {
            cube([2*unoHoleMargin, 2*unoHoleMargin + 1, thickness]);
        }
        translate([unoHoleULx - unoHoleMargin, unoHoleULy - unoHoleMargin - 1, 0]) {
            cube([2*unoHoleDLy, 2*unoHoleDLy + 1, thickness]);
        }
    }
    
    // Arduino UNO holes
    translate([unoHoleDLx, unoHoleDLy, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    }
    translate([unoHoleULx, unoHoleULy, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    }    
    translate([unoHoleURx, unoHoleURy, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    }   
    translate([unoHoleDRx, unoHoleDRy, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    
    translate([0, (53.3 - 43) / 2, 0]) {
        // L298N holes
        translate([3, 3, -0.01]) {
            cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
        }
        translate([3, 40, -0.01]) {
            //hex_nut(nut_diameter,nut_height,nut_thread_step,nut_step_shape_degrees,nut_thread_outer_diameter,nut_resolution);
            cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
        }
        translate([40, 40, -0.01]) {
 //           hex_nut(nut_diameter,nut_height,nut_thread_step,nut_step_shape_degrees,nut_thread_outer_diameter,nut_resolution);
            cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
        }
        translate([40, 3, -0.01]) {
//            hex_nut(nut_diameter,nut_height,nut_thread_step,nut_step_shape_degrees,nut_thread_outer_diameter,nut_resolution);
            cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
        }
    }
}
    


// L298N
//translate([0, (53.3 - 43) / 2, 0]) {
//    difference() {
//        union() {
//            // L298N base
//            difference() {
//                cube([43, 43, 1]);
//                translate([6, 6, -0.01]) {
//                    cube([31, 31, 1.02]);
//                }  
//            }
//        }
//        // L298N holes
//        translate([3, 3, -0.01]) {
//            cylinder(h = 1.02, r = 1.6, $fn=100);
//        }
//        translate([3, 40, -0.01]) {
//            cylinder(h = 1.02, r = 1.6, $fn=100);
//        }
//        translate([40, 40, -0.01]) {
//            cylinder(h = 1.02, r = 1.6, $fn=100);
//        }
//        translate([40, 3, -0.01]) {
//            cylinder(h = 1.02, r = 1.6, $fn=100);
//        }
//  
//    }
//}



// Arduino UNO
// https://www.flickr.com/photos/johngineer/5484250200/sizes/o/in/photostream/
//difference() {
//    cube([68.6, 53.3, 1]);
//    translate([14, 2.5 + 1.3/2, -0.01]) {
//        cylinder(h = 1.02, r = 1.6, $fn=100);
//    }
//    translate([14 + 1.3, 53.3 - 2.5, -0.01]) {
//        cylinder(h = 1.02, r = 1.6, $fn=100);
//    }    
//    translate([14 + 1.3 + 50.8, 2.5 + 5.1 + 27.9, -0.01]) {
//        cylinder(h = 1.02, r = 1.6, $fn=100);
//    }   
//    translate([14 + 1.3 + 50.8, 2.5 + 5.1, -0.01]) {
//        cylinder(h = 1.02, r = 1.6, $fn=100);
//    } 
//    translate([5, 5, -0.01]) {
//        cube([68.6 - 5*2, 53.3 - 5*2, 1.02]);
//    } 
//}

