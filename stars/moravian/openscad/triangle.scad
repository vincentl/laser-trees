m =  1;              // minkowski radius
h = 20;              // Height of spike
e =  5;              // Edge length of a spike
c = e*(1 + sqrt(2)); // Largest coordinate for Rhombicuboctahedron

// Compute v - the vector perpendicular to the triangle face
uv = cross([e-c,0,c-e], [0,e-c,c-e]);
v = uv * 1/norm(uv);

// Rotate v to the z-axis
// a is the vector to rotate around
z = [0,0,1];
ua = cross(v,z);
a = ua * 1/norm(ua);

// theta is the angle of rotation
theta = acos(v * z);

// Wikipedia Rodrigues' rotation formula
I = [[1,0,0],[0,1,0],[0,0,1]];
K = [[0,-a[2],a[1]],[a[2],0,-a[0]],[-a[1],a[0],0]];
R = I + sin(theta)*K + (1-cos(theta))*K*K;
M = [[R[0][0], R[0][1], R[0][2], 0], [R[1][0], R[1][1], R[1][2], 0], [R[2][0], R[2][1], R[2][2]]];

// Extract face from rotation matrix
echo(R*[e,e,c]);
echo(R*[e,c,e]);
echo(R*[c,e,e]);

A = R*[e,e,c];
B = R*[e,c,e];
C = R*[c,e,e];

face = [[A[0],A[1]],[B[0],B[1]],[C[0],C[1]]];

mirror([0,0,1])
  linear_extrude(height=0.5*A[2],scale=0.5)
    minkowski() {
      polygon(face);
      circle(r = m, $fn=180);
    }
    
minkowski(){
  linear_extrude(height=h,scale=0) {
    polygon(face);
  }
  sphere(r=m,$fn=180);
}
