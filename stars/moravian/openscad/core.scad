m =  1;                 // minkowski radius
h = 32;                 // Height of spike
e =  5;                 // 1/2 Edge length of a spike
c = e*(1 + sqrt(2));    // Largest coordinate for Rhombicuboctahedron

E = e + m + 0.5;        // edge + minkowski + tolerance
C = E*(1 + sqrt(2));    // c for expanded Rhombicuboctahedron

hull() 
{
  cube([E, E, C], center=true);
  cube([E, C, E], center=true);
  cube([C, E, E], center=true);
}
