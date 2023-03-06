module motor_mount(motor_width, motor_height, opening_radius, screw_offset, screw_diameter, mount_thickness) {
    
    translate([0, -mount_thickness / 2, 0]) difference() { 
            
            //motor mount
            cube([motor_width, mount_thickness, motor_height], true);
           
            //opening
            rotate([90, 0, 0]) cylinder (h = mount_thickness + 1, r=opening_radius, center = true, $fn=100);
        
            //screw holes
            for (x =[-screw_offset, screw_offset])
                for (z =[-screw_offset, screw_offset])
                    translate([x, 0, z]) rotate([90, 0, 0])     cylinder (h = mount_thickness + 1, r=screw_diameter, center = true, $fn=100);
                
    }
    
}
