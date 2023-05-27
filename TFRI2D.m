function [J] = TFRI2D(I)

[x,y]=size(I);

for i=1:x
  J(i, :)=TFRI1D(I(i, :));
endfor

for i=1:y
  J(:, i) = flip(TFRI1D(J(:, i)')');
endfor

J = circshift(J, 1);
endfunction


