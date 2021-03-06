// M_3_3_01.pde
// Mesh.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * example how to use the mesh class
 */

import processing.opengl.*;


void setup() {
  size(1000,1000,OPENGL);

  // setup drawing style 
  background(255);
  hint(ENABLE_OPENGL_4X_SMOOTH);
  noStroke();
  fill(0);

  // setup lights
  lightSpecular(230, 230, 230); 
  directionalLight(200, 200, 200, 0.5, 0.5, -1); 
  specular(color(200)); 
  shininess(5.0); 

  // setup view
  translate(width*0.5, height*0.5);
  rotateX(-0.2); 
  rotateY(-0.5); 
  scale(100);


  // setup Mesh, set colors and draw  
  Mesh myMesh = new Mesh(Mesh.STEINBACHSCREW, 200, 200, -3, 3, -PI, PI);
  myMesh.setColorRange(192, 192, 50, 50, 50, 50, 100);
  myMesh.draw();
  
  
  // save image
  saveFrame(timestamp()+".png");
}


String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}

