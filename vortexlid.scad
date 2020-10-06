/* lid for box to hold a vortex dome:
   https://physicshack.com/product/vortex-dome/
   */
/* $fa=0.5;
$fs=0.5; */
$fn=256;
union()
{
    cylinder(r=104, h=2);
    difference()
    {
        cylinder(r=102-0.2, h=2+10);
        translate([0, 0, 2]) cylinder(r=100, h=11);
    }
}
