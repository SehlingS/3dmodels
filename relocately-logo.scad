
// Module names are of the form poly_<inkscape-path-id>().
// As a result you can associate a polygon in this OpenSCAD program with the
//  corresponding SVG element in the Inkscape document by looking for 
//  the XML element with the attribute id="inkscape-path-id".

// Paths have their own variables so they can be imported and used 
//  in polygon(points) structures in other programs.
// The NN_points is the list of all polygon XY vertices. 
// There may be an NN_paths variable as well. If it exists then it 
//  defines the nested paths. Both must be used in the 
//  polygon(points, paths) variant of the command.

profile_scale = 1; //25.4/90; //made in inkscape in mm

// helper functions to determine the X,Y dimensions of the profiles
function min_x(shape_points) = min([ for (x = shape_points) min(x[0])]);
function max_x(shape_points) = max([ for (x = shape_points) max(x[0])]);
function min_y(shape_points) = min([ for (x = shape_points) min(x[1])]);
function max_y(shape_points) = max([ for (x = shape_points) max(x[1])]);

height = 5;
width = 1.0;


path3725_0_points = [[-4.010350,-19.681227],[-4.010350,-16.572889],[-1.140240,-16.572889],[-1.140240,-14.033510],[-5.362254,-13.350192],[-9.274041,-11.912513],[-12.797710,-9.800999],[-15.855372,-7.096173],[-18.369139,-3.878559],[-20.261122,-0.228683],[-21.453430,3.772933],[-21.868175,8.045762],[-22.058523,9.001999],[-22.579418,9.778040],[-23.355635,10.298758],[-24.311951,10.489025],[-24.987466,10.779475],[-25.279334,11.453307],[-25.279334,12.079626],[-22.518780,12.079626],[-20.959701,12.079626],[-19.502943,12.079626],[-19.502943,7.766193],[-14.867051,7.766193],[-14.867051,1.744856],[-9.387282,-1.126286],[-9.387282,7.366735],[-6.711476,7.366735],[-6.711476,5.724975],[-6.279574,3.936495],[-5.694660,3.391896],[-4.823735,3.191796],[-3.727680,3.191796],[-3.727680,-0.555263],[-3.595640,-2.621234],[-3.300372,-3.481600],[-2.736525,-4.052207],[-2.390293,-4.129722],[-1.883142,-5.595694],[-0.632777,-6.462914],[-0.632777,-8.512916],[-0.375407,-9.003306],[0.133583,-9.252924],[0.642965,-9.003306],[0.900462,-8.512916],[0.900462,-6.428290],[2.076901,-5.557847],[2.556693,-4.143158],[3.004209,-4.052207],[3.552880,-3.500352],[3.801688,-2.637903],[3.862038,-0.555263],[3.862038,3.226935],[7.881432,3.263109],[7.881432,-1.658554],[15.630313,2.140180],[15.630313,8.561493],[19.955629,8.561493],[19.955629,12.079626],[22.685179,12.079626],[22.685179,12.095633],[25.871548,12.095633],[25.871548,11.453296],[25.579421,10.779465],[24.903647,10.489015],[23.947411,10.298747],[23.171371,9.778029],[22.650654,9.001988],[22.460386,8.045752],[22.043255,3.759821],[20.845142,-0.252879],[18.945969,-3.911070],[16.425656,-7.133476],[13.364123,-9.838822],[9.841293,-11.945828],[5.937085,-13.373220],[1.731420,-14.039720],[1.731420,-16.572899],[4.663540,-16.572899],[4.663540,-19.681227],[-4.010350,-19.681227]];
path3725_1_points = [[-20.959701,14.875319],[-20.959701,14.906326],[-25.279334,14.906326],[-25.279334,15.024147],[-26.877162,15.550455],[-28.164882,16.577892],[-29.024237,17.992727],[-29.336968,19.681227],[29.336968,19.681227],[29.076619,18.131451],[28.353918,16.801318],[27.256388,15.776971],[25.871548,15.144554],[25.871548,14.875319],[22.685179,14.875319],[21.031533,14.875319],[-20.959701,14.875319]];

module poly_path3725(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path3725_0_points);
    linear_extrude(height=h)
      polygon(path3725_1_points);
  }
}

// The shapes
//poly_path3725(height, width);
