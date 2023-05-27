function [J] = TFD1D(I)
  [x,y]=size(I);
  J=zeros(1,y);
  for i=1:y
      for j=1:y
        J(1,i)=J(1,i)+I(1,j)*exp((2*1i*pi*(i-1)*(j-1))/y);
      endfor
  endfor
  J = J / y;
endfunction
