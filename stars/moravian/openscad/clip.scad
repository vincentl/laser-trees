m =  1;                 // minkowski radius
h = 32;                 // Height of spike
e =  5;                 // 1/2 Edge length of a spike
c = e*(1 + sqrt(2));    // Largest coordinate for Rhombicuboctahedron
j =  8;                 // Height of clip spike

b = 3;                  // board thickness
w = 2;                  // clip wall
l = 3;                  // clip wall depth

mirror([0,0,1])
  linear_extrude(height=0.5*c,scale=0.5)
    minkowski() {
      polygon([[e,e],[e,-e],[-e,-e],[-e,e]]);
      circle(r = m, $fn=180);
    }

difference(){
  linear_extrude(height=j,scale=1 - j/h)
    minkowski() {
      polygon([[e,e],[e,-e],[-e,-e],[-e,e]]);
      circle(r = m, $fn=180);
    }
    
  translate([0,0,j-l/2]) {
    cube([2*e,b,l], center=true);
    cube([b,2*e,l], center=true);
  }
}
