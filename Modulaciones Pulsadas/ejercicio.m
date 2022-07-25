N=(8000/100);
fs=(1/8000);


matriz=zeros(N,4);

i=0;

while i <= N-1
   matriz(i+1,1)=2+2*cos(2*pi*100*fs*i);
   matriz(i+1,2)= round((matriz(i+1,1)*((2^8)-1))/5);
   matriz(i+1,3)= round((matriz(i+1,1)*((2^10)-1))/5);
   matriz(i+1,4)= round((matriz(i+1,1)*((2^12)-1))/5);
   i=i+1;
end