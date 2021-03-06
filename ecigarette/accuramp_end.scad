accus = 5;
gradient = 10;
accu_diameter = 18; 
accu_length = 67; // 65 plus padding
thickness = 2;


length = accus * accu_diameter;

// Height
// sin alpha = opposite / hypothenuse
// height = length * sin gradient
height = length * sin(gradient);
echo("Height: ", height);

// Base offset
// Due to different ankle
// sin alpha = opposite / hypothenuse
// base_offset = thickness * sin gradient
base_offset = thickness * sin(gradient);
echo("Base offset: ", base_offset);

// Case length
// cos alpha = adjacent / hypothenuse
// case_length = length * cos gradient
case_length = length * cos(gradient) + base_offset;
echo("Case length: ", case_length);

// Grip offset
// sin alpha = opposite / hypothenuse
// grip_offset = accu_diameter / 2 * sin gradient
grip_offset = accu_diameter / 2 * sin(gradient);
echo("Grip offset: ", grip_offset);

back_height = sin(gradient) * (length + 2 * thickness);

hook_length = 20;


// Case
difference() {
    cube([case_length + 2 * thickness, accu_length + 2 * thickness, height + accu_diameter]);
    translate([thickness, thickness, 0]) cube([case_length, accu_length, height + accu_diameter]);
    translate([0, 0, accu_diameter / 1.5]) rotate([0, -gradient, 0]) cube([length + 2 * thickness + 10, accu_length + 2 * thickness, height + 10]);
    translate([accu_diameter / 2, 1.5 * thickness, accu_diameter / 2 + grip_offset]) rotate([90, 0, 0]) cylinder(2 * thickness, r = accu_diameter / 2 - 2);
    translate([accu_diameter / 2, accu_length + 2.5 * thickness, accu_diameter / 2 + grip_offset]) rotate([90, 0, 0]) cylinder(2 * thickness, r = accu_diameter / 2 - 2);

    // Remove Upper border
    translate([thickness + case_length, thickness, back_height]) rotate([0, -gradient, 0]) cube([5 * thickness, accu_length, accu_diameter]);    

    // hole for hook
    translate([case_length + thickness, (accu_length + 2 * thickness) / 2 - hook_length / 2, 0]) cube([thickness, hook_length, thickness]);

    
    translate([case_length + 1.6 * thickness, 0, 7]) rotate([90, 0, 90]) linear_extrude(thickness / 2) text("TooAngel", size=4, font="Deftone Stylus:style=Regular");
    translate([case_length + 1.6 * thickness, 0, 2]) rotate([90, 0, 90]) linear_extrude(thickness / 2) text("Design", size=4, font="Deftone Stylus:style=Regular");
}


// Base
translate([base_offset, 0, 0]) rotate([0, -gradient, 0]) cube([length + 2 * thickness, accu_length + 2 * thickness, thickness]);
