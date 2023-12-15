m   = 1;                      // minkowski radius
phi = (1 + sqrt(5))/2;        // golden ratio

b = 3.1;                      // board thickness
l = 3;                        // clip wall depth

h = 32;                       // Height of spike
j = 4;                        // Height of clip spike
x = h/j;                      // clip ratio for spike
e = 16;                       // Edge length of a spike
R = e/sqrt(3);                // radius equilateral triangle

s = phi^2 * e / 2 / sqrt(3);  // inscribed sphere in icosahedron
c = e*sqrt(phi*sqrt(5))/2;    // circumscribed sphere icosahedron

// m/cos(60) is the length of the hypotenuse of the triangle
// eminating from the point of the triangle
r = R - m/cos(60);
v = [[0,r], [-r*cos(30),-r*sin(30)], [r*cos(30),-r*sin(30)]];

mirror([0,0,1])
  linear_extrude(height=0.5*c,scale=0.5)
    minkowski(){
      polygon(v);
      circle(r = m, $fn=180);
    }

difference(){
  linear_extrude(height=h/x,scale=1-1/x)
    minkowski(){
      polygon(v);
      circle(r = m, $fn=180);
    }
    
  translate([0,0,j-l/2]) {
    cube([2*(r+m),b,l], center=true);
    cube([b,2*(r+m),l], center=true);
  }
}