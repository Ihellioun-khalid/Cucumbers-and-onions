/*********************************************
 * OPL 12.6.0.0 Model
 * Crop
 *********************************************/

//Data declarations.
//Make sure you use c[i] to access the i-th cost 
//and do not remove/change the following line
float c[1..2] = [4, 5];

//Decision variables.
dvar float x;
dvar float y;

//Objective function.
maximize c[1]*x+c[2]*y;

//Constraints
subject to {
    2*x +  y <= 8;
      x +2*y <= 7;
           y <= 3;
    x >= 0;
    y >= 0;
}

// Display
execute {
  writeln("Post treatment: ");
  writeln("The objectif's value is  "+cplex.getObjValue());
} 