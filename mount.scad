module motor_mount(motor_width, motor_height, mount_thickness, screw_offset, screw_diameter) {
    
    translate([0, -mount_thickness / 2, 0]) difference() { 
            
            //motor mount
            cube([motor_width, mount_thickness, motor_height], true);
           
            //mount cylinder hole
            rotate([90, 0, 0]) cylinder (h = mount_thickness + 1, r=9, center = true, $fn=100);
        
            //screw holes
            for (x =[-screw_offset, screw_offset])
                for (z =[-screw_offset, screw_offset])
                    translate([x, 0, z]) rotate([90, 0, 0])     cylinder (h = mount_thickness + 1, r=screw_diameter, center = true, $fn=100);
                
    }
    
}
