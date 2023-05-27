function [J] = TFD2D(I)
  [x,y]=size(I);
  J=zeros(x,y);
  for i=1:x
      for j=1:y
          for k=1:x
              for l=1:y
                  J(i,j)=J(i,j)+I(k,l)*exp(-2*pi*1i*(((i-1)*(k-1)/x)+((j-1)*(l-1)/y)));
              endfor
          endfor
      endfor
  endfor
endfunction


