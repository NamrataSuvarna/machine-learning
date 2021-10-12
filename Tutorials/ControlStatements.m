>> v=zeros(10,1)
v =

   0
   0
   0
   0
   0
   0
   0
   0
   0
   0

>> for i=1:10, v(i)=2^i; end;
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> indices=1:10;
>> indices
indices =

    1    2    3    4    5    6    7    8    9   10

>> for i=indices; disp(i); end;
1
2
3
4
5
6
7
8
9
10
>> i=1;
>> while i<=5, v(i)=100; i=i+1; end;
>> v
v =

    100
    100
    100
    100
    100
     64
    128
    256
    512
   1024

>> i=1;

>> while true, v(i)=999; i=i+1; if i==6, break; end; end;
>> v
v =

   999   999   999   999   999

>> v(1)
ans = 999
>> v(1)=2
v =

     2   999   999   999   999

>> if v(1)==1, disp('The value is one'); elseif v(1)==2, disp('The value is two'); else disp ('The value is not one or two'); end;
The value is two

>>exit; quit; %to exit octave

>> squareThisNumber(5)
error: 'squareThisNumber' undefined near line 1, column 1
>> pwd
ans = C:\Users\ashis\Desktop\Machine Learning
>> cd 'C:\Users\ashis\Desktop\Machine Learning\Tutorials'
>> squareThisNumber(5)
ans = 25
>> addpath('C:\Users\ashis\Desktop\Machine Learning\Tutorials') %octave search path, functions accessible from anywhere
>> cd 'C:\Users\ashis\Desktop\Machine Learning'
>> squareThisNumber(5)
ans = 25
>> [a,b]=squareAndCubeThisNumber(5) %octave allows to define functions with multiple return values
a = 25
b = 125
>> X=[1 1; 1 2; 1 3]
X =

   1   1
   1   2
   1   3

>> y=[1;2;3]
y =

   1
   2
   3

>> theta=[0;1]
theta =

   0
   1

>> j=costFunctionJ(X,y,theta)
j = 0
>> theta=[0;0]
theta =

   0
   0

>> j=costFunctionJ(X,y,theta)
j = 2.3333