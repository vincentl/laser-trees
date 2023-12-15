phi = (1 + sqrt(5))/2;        // golden ratio
e = 16 + 2.0;                 // Edge length of a spike + tolerance for glueing
s = phi^2 * e / 2 / sqrt(3);  // inscribed sphere in icosahedron

// create an icosahedron by intersecting 3 orthogonal golden-ratio rectangles
module icosahedron(edge_length) {
   st=0.0001;  // microscopic sheet thickness
   hull() {
       cube([edge_length*phi, edge_length, st], true);
       rotate([90,90,0]) cube([edge_length*phi, edge_length, st], true);
       rotate([90,0,90]) cube([edge_length*phi, edge_length, st], true);
   }
}

//The edge length L is related to the inner diameter D (distance between opposite faces)
L = s * sqrt(3) / phi^2;

rotate([acos(-sqrt(5)/3)/2 - 90, 0, 0])
icosahedron(L);