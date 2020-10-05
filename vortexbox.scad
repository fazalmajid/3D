/* box to hold a vortex dome:
   https://physicshack.com/product/vortex-dome/
   */
/* $fa=0.5;
$fs=0.5; */
$fn=256;
union()
{
    difference()
    {
        cylinder(r=104, h=50);
        translate([0, 0, 2]) cylinder(r=102, h=50);
        translate([0, 106, 50]) rotate([90, 0, 0]) cylinder(r=10, h=10);
        translate([0, -96, 50]) rotate([90, 0, 0]) cylinder(r=10, h=10);
    }
    translate([0, 0, 2]) difference() {
        cylinder(r=31, h=15-2);
        #cylinder(r=25, h=16);
        translate([0, 0, 7]) #cylinder(r=26, h=50);
    }
}