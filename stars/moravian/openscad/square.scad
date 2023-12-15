m =  1;              // minkowski radius
h = 32;              // Height of spike
e =  5;              // Edge length of a spike
c = e*(1 + sqrt(2)); // Largest coordinate for Rhombicuboctahedron

mirror([0,0,1])
  linear_extrude(height=0.5*c,scale=0.5) 
    minkowski() {
      polygon([[e,e],[e,-e],[-e,-e],[-e,e]]);
      circle(r = m, $fn=180);
    }
 
minkowski() {
  linear_extrude(height=h,scale=0)
    polygon([[e,e],[e,-e],[-e,-e],[-e,e]]);
  sphere(r=m,$fn=180);
}

