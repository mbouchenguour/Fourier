function [J] = TFR2D(I)

[x,y]=size(I);

for i=1:x
  J(i, :)=TFR1D(I(i, :));
endfor

for i=1:y
  J(:, i) = flip(TFR1D(J(:, i)')');
endfor

J = circshift(J, 1);
endfunction


