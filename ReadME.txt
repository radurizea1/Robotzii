Tema:
In this topic, we will simulate the autonomous part of the robot at a minimalist level through the interpolation methods learned in the course.

We consider that the robot is on a two-dimensional terrain without bumps, and it needs to discover a trajectory such that it passes through a set of points: (x0,y0),(x1,y1),(x2,y2),...,(xn,yn)(x0​,y0​),(x1​,y1​),(x2​,y2​),...,(xn​,yn​), where xi<xi+1,    i=0:n−1xi​<xi+1​,    i=0:n−1. Knowing these points, you will determine this trajectory using two interpolation methods: Vandermonde and Natural Cubic Splines.