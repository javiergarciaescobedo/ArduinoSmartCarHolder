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
holeRadius = 1.6;
thickness = 2;

difference() {
    union() {
        cube([unoWidth, unoHeight, thickness]);
        translate([unoHoleDLx-unoHoleMargin, unoHoleDLy-unoHoleMargin, -0.01]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+2]);
        }
        translate([unoHoleULx-unoHoleMargin,, unoHoleULy-unoHoleMargin,, -0.01]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+2]);
        }    
        translate([unoHoleURx-unoHoleMargin,, unoHoleURy-unoHoleMargin,, -0.01]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+2]);
        }   
        translate([unoHoleDRx-unoHoleMargin,, unoHoleDRy-unoHoleMargin,, -0.01]) {
            cube([unoHoleMargin*2, unoHoleMargin*2, thickness+2]);
        } 
    }
    
    // Arduino UNO holes
    translate([unoHoleDLx, unoHoleDLy, -0.01]) {
        cylinder(h = thickness + 2 + 0.02, r = holeRadius, $fn=100);
    }
    translate([unoHoleULx, unoHoleULy, -0.01]) {
        cylinder(h = thickness + 2 + 0.02, r = holeRadius, $fn=100);
    }    
    translate([unoHoleURx, unoHoleURy, -0.01]) {
        cylinder(h = thickness + 2 + 0.02, r = holeRadius, $fn=100);
    }   
    translate([unoHoleDRx, unoHoleDRy, -0.01]) {
        cylinder(h = thickness + 2 + 0.02, r = holeRadius, $fn=100);
    } 
   
    translate([unoWidth/2, unoHoleDRy, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    translate([unoWidth/2-24.5, unoHoleDRy+37.5, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    translate([unoWidth/2+24.5, unoHoleDRy+37.5, -0.01]) {
        cylinder(h = thickness + 0.02, r = holeRadius, $fn=100);
    } 
    
    translate([6, 12, -0.01]) {
        cube([unoWidth-12, unoHeight-24, thickness+0.02]);
    }
}

    

