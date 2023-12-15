# Two Part Laser Cut Christmas Tree with 3D Printed Star

![Image of two intersecting Christmas tree profiles that form a 3D tree](https://github.com/vincentl/laser-trees/blob/main/assets/readme-tree.png)

This project contains SVG outlines for laser cutting 2-part Christmas trees
from 3mm plywood and 3D printing stars for larger trees.

## SVG files for Laser Cutting Trees

The `trees` directory contains various SVG files that contains paths to cut two
Christmas tree silhouettes from 3mm plywood. The two parts interlock to form a 
self-supporting, 3D Christmas tree.
- `2-part-tree-50mm.svg`, `2-part-tree-75mm.svg`, and `2-part-tree-100mm.svg`, contain paths for both parts and the dimension indicates the height of the tree
- `2-part-tree-400mm-square-bottom.svg` and `2-part-tree-400mm-square-top.svg` each contain a path for one part that fits on a 400mm square plywood sheet that together produce a 445mm tall tree.
- `2-part-tree-template.svg` contains two paths that must be aligned and combined to form a tree of another desired height.
  - Scale the tree path to the desired height and lock the width to scale proportional to the height
  - Scale the rectangular cut path to **half** the desired height **independent** of the width
  - Adjust the width of the rectangular cut to match the material thickness plus a tolerance
  - Repeat the following steps twice to create the two different interlocking parts
    - Align the rectangle to top of the tree (and then the bottom for the other part)
    - Select both parts and combine with the "Difference" operator

## 3D Stars

The `stars` directory contains two 3D models for tree topper stars. Both models
have three types of parts:
- `core` is polyhedron center for that star and the other parts are glued to the core
- spikes that form the majority of the star
- `clip` is a truncated spike designed to clip onto the top of the tree. The clips are designed for 3mm plywood and are sized for a 445mm tall tree.

The parts are designed in [OpenSCAD](https://openscad.org/) language. OpenSCAD
renders 3D models and the rendered models for each part is also included in
this project for convenience.

### Stellated Dodecahedron Star

The [Great Stellated Dodecahedron](https://en.wikipedia.org/wiki/Great_stellated_dodecahedron)
looks like an icosahedron with 20 spikes. In this 3D model, one spike is 
modified to anchor the star to the tree.
- Print one `core` and one `clip`. Print these with some amount of infill for strength.
- Print 19 `spike` parts. These can be printed in "vase" mode with zero infill.
- Use glue appropriate for the 3D printing material and adhere each part to the core.

### Moravian Star

A [Moravian Star](https://en.wikipedia.org/wiki/Moravian_star) is a rhombicuboctahedron
polyhedron with 26 spikes (18 have a square base and 8 have a triangular base). In this 3D
model, one spike is modified to anchor the start to the tree.
- Print one `core` and one `clip`. Print these with some amount of infill for strength.
- Print 17 `square` spikes (the clip forms the 18th square spike) and 8 `triangle` spikes.
- Use glue appropriate for the 3D printing material and adhere each part to the core.

# License

Two Part Laser Cut Christmas Tree with 3D Printed Star © 2023 by Vincent
Lucarelli is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/).

> `trees/2-part-tree-template-TruTone-source.pdf` is not covered by this
> license. The file was obtained in 2023 from the publicly available page
> https://tru-tone.com/pages/2-part-christmas-tree-diy-decoration. The file did
> not include licensing information.
