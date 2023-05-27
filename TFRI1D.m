function [J] = TFRI1D(I)
  [x,y]=size(I);
  if(y!=1)
      for i=1:(y/2)
          pair(i)=I(2*i-1);
          impair(i)=I(2*i);
      endfor
      pair=TFRI1D(pair);
      impair=TFRI1D(impair);
      for i=1:(y/2)
          J(i)=(pair(i)+exp((2*1i*pi*(i-1))/y)*impair(i))/2;
          J(i+(y/2))=(pair(i)-exp((2*1i*pi*(i-1))/y)*impair(i))/2;
      endfor
  else
    J = I;
    endif
endfunction



