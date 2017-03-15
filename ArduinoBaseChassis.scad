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
        cube([unoWidth, unoHeight, thickness]);
        translate([unoHoleDLx-unoHoleMargin, unoHoleDLy-unoHoleMargin, 0]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+3]);
        }
        translate([unoHoleULx-unoHoleMargin, unoHoleULy-unoHoleMargin, 0]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+3]);
        }    
        translate([unoHoleURx-unoHoleMargin, unoHoleURy-unoHoleMargin, 0]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+3]);
        }   
        translate([unoHoleDRx-unoHoleMargin, unoHoleDRy-unoHoleMargin, 0]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+3]);
        } 
    }
    
    // Arduino UNO holes
    translate([unoHoleDLx, unoHoleDLy, -0.01]) {
        cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
    }
    translate([unoHoleULx, unoHoleULy, -0.01]) {
        cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
    }    
    translate([unoHoleURx, unoHoleURy, -0.01]) {
        cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
    }   
    translate([unoHoleDRx, unoHoleDRy, -0.01]) {
        cylinder(h = thickness + 3 + 0.02, r = holeRadius, $fn=100);
    } 
   
    // Smartcar chasssis holes
    translate([6/2, unoHeight/2, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    translate([6/2 + 37.5, unoHeight/2 + 48.5/2, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    translate([6/2 + 37.5, unoHeight/2 - 48.5/2, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    
    translate([6, 6, -0.01]) {
        cube([unoWidth-12, unoHeight-12, thickness+0.02]);
    }
}

    

