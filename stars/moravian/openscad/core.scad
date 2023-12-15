e =  5 + 2.0;        // Edge length of a spike + tolerance for glueing
c = e*(1 + sqrt(2)); // Largest coordinate for Rhombicuboctahedron

hull() 
{
  cube([e, e, c], center=true);
  cube([e, c, e], center=true);
  cube([c, e, e], center=true);
}
