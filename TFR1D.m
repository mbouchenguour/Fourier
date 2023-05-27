function [J] = TFR1D(I)
  [x,y]=size(I);
  if(y!=1)
      for i=1:(y/2)
          pair(i)=I(2*i-1);
          impair(i)=I(2*i);
      endfor
      pair=TFR1D(pair);
      impair=TFR1D(impair);
      for i=1:(y/2)
          J(i)=pair(i)+exp((-2*1i*pi*(i-1))/y)*impair(i);
          J(i+(y/2))=pair(i)-exp((-2*1i*pi*(i-1))/y)*impair(i);
      endfor
  else
    J = I;
  endif
endfunction


