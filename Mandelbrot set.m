%Created by Vaibhav Dwivedi






x = linspace(-2,0.6,500); % We generate 500 point in the interval (-2,0.6) stored on vector x
y = linspace(-1.1,1.1,500); % the same thing for y
[X,Y] = meshgrid(x,y); % We create a (500x500) grid, X having a copy of the vector x on each column, Y on each line. 
C = complex(X,Y); % define a complex number by the aggreagation of the 2 matrix
B = zeros(size(C)); % define a matrix of zeros.
Z = C; 

for k = 1:30 
    Z = Z.^2 + C;  % Z = Z*Z + C
    B = B + (abs(Z)<2); % fill the empty matrix
end
imagesc(B); % this uses a full range of colors
colormap(gray); % we change it to black and white (check Winter, Blue ... )