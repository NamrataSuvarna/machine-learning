>> 5+6
ans = 11
>> 3-2.5*8
ans = -17
>> 1/2
ans = 0.5000
>> 2^6
ans = 64
>> 1==2 %false
ans = 0
>> 1~=2
ans = 1
>> 1&&0 %AND
ans = 0
>> 1||0 %OR
ans = 1
>> xor(1,0)
ans = 1
>> version
ans = 6.3.0
>> PS1('>> ');
>> a=3
a = 3
>> a=3; %semicolon suppressing output
>> b='hi';
>> b
b = hi
>> c=(3>=1);
>> c
c = 1
>> a=pi;
>> a
a = 3.1416
>> disp(a);
3.1416
>> disp(sprintf('2 decimals: %0.2f', a))
2 decimals: 3.14
>> disp(sprintf('6 decimals: %0.6f', a))
6 decimals: 3.141593
>> a
a = 3.1416
>> format long
>> a
a = 3.141592653589793
>> format short
>> a
a = 3.1416
>> A=[1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A=[1 2;
3 4;
5 6]
A =

   1   2
   3   4
   5   6

>> v=[1 2 3]
v =

   1   2   3

>> %semicolon means next line
>> v=[1;2;3]
v =

   1
   2
   3

>> v=[1:0.1:2] %start with 1, increment by 0.1, go upto 2
v =

 Columns 1 through 10:

   1.0000   1.1000   1.2000   1.3000   1.4000   1.5000   1.6000   1.7000   1.8000   1.9000

 Column 11:

   2.0000

>> v=1:6
v =

   1   2   3   4   5   6

>> ones(2,3)
ans =

   1   1   1
   1   1   1

>> C=ones(2,3)
C =

   1   1   1
   1   1   1

>> C=[2 2 2; 2 2 2]
C =

   2   2   2
   2   2   2

>> C=2*ones(2,3)
C =

   2   2   2
   2   2   2

>> w=ones(1,3)
w =

   1   1   1

>> w=zeros(1,3)
w =

  0  0  0

>> w=rand(1,3)
w =

   0.290451   0.091971   0.468130

>> rand(3,3)
ans =

   0.4788   0.1519   0.7845
   0.4357   0.1335   0.9086
   0.2799   0.8465   0.6596

>> %random numbers distributed uniformly between 0 and 1
>> rand(3,3)
ans =

   0.053860   0.928624   0.660641
   0.292076   0.764715   0.527182
   0.429666   0.547741   0.322072

>> rand(3,3)
ans =

   0.7410   0.1412   0.4861
   0.3696   0.5092   0.8184
   0.7380   0.6925   0.3820

>> w=randn(1,3)
w =

   1.5963  -0.6641   0.8712

>> %random values from gaussian distribution with mean 0 and SD/variance 1
>> w=-6+sqrt(10)*(randn(1,10000)); %vector of 10000 columns of gaussian random values
>> hist(w)
>> hist(w,50) %50 buckets
>> eye(4)
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> I=eye(4)
I =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> I=eye(6)
I =

Diagonal Matrix

   1   0   0   0   0   0
   0   1   0   0   0   0
   0   0   1   0   0   0
   0   0   0   1   0   0
   0   0   0   0   1   0
   0   0   0   0   0   1

>> eye(3)
ans =

Diagonal Matrix

   1   0   0
   0   1   0
   0   0   1

>> help eye
>> help rand
>> help help