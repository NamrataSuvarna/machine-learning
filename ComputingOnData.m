>> A
A =

   1   2
   3   4
   5   6

>> B
B =

   11   12
   13   14
   15   16

>> C=[1 1;2 2]
C =

   1   1
   2   2

>> A*C
ans =

    5    5
   11   11
   17   17

>> A.*B %element wise multiplication
ans =

   11   24
   39   56
   75   96

>> A.^2
ans =

    1    4
    9   16
   25   36

>> v=[1;2;3]
v =

   1
   2
   3

>> 1./v
ans =

   1.0000
   0.5000
   0.3333

>> 1./A %inverse of each element
ans =

   1.0000   0.5000
   0.3333   0.2500
   0.2000   0.1667

>> log(v)
ans =

        0
   0.6931
   1.0986

>> exp(v)
ans =

    2.7183
    7.3891
   20.0855

>> abs(v)
ans =

   1
   2
   3

>> -v
ans =

  -1
  -2
  -3

>> v+ones(length(v),1)
ans =

   2
   3
   4

>> v+1
ans =

   2
   3
   4

>> A' %transpose
ans =

   1   3   5
   2   4   6

>> (A')'
ans =

   1   2
   3   4
   5   6

>> a=[1 15 2 0.5]
a =

    1.0000   15.0000    2.0000    0.5000

>> max(a)
ans = 15
>> [val,ind]=max(a)
val = 15
ind = 2
>> max(A) %column wise max
ans =

   5   6

>> a<3
ans =

  1  0  1  1

>> find(a<3)
ans =

   1   3   4

>> A=magic(3) %magic square - each row, column, diagonal add up to same
A =

   8   1   6
   3   5   7
   4   9   2

>> [r,c]=find(A>=7)
r =

   1
   3
   2

c =

   1
   2
   3

>> A(2,3)
ans = 7
>> sum(a)
ans = 18.500
>> prod(a)
ans = 15
>> floor(a) %round down
ans =

    1   15    2    0

>> ceil(a) %round up
ans =

    1   15    2    1

>> rand(3)
ans =

   0.096511   0.550196   0.788589
   0.599450   0.115730   0.679173
   0.251920   0.264756   0.589907

>> max(rand(3),rand(3))
ans =

   0.4742   0.8871   0.9557
   0.8876   0.5332   0.7820
   0.9279   0.9194   0.9711

>> max(A,[],1) %get max element column wise
ans =

   8   9   7

>> max(A,[],2) %get max element row wise
ans =

   8
   7
   9

>> max(A)
ans =

   8   9   7

>> max(max(A))
ans = 9

>> A(:) %convert A to a vector
ans =

   8
   3
   4
   1
   5
   9
   6
   7
   2

>> max(A(:))
ans = 9
>> A=magic(9)
A =

   47   58   69   80    1   12   23   34   45
   57   68   79    9   11   22   33   44   46
   67   78    8   10   21   32   43   54   56
   77    7   18   20   31   42   53   55   66
    6   17   19   30   41   52   63   65   76
   16   27   29   40   51   62   64   75    5
   26   28   39   50   61   72   74    4   15
   36   38   49   60   71   73    3   14   25
   37   48   59   70   81    2   13   24   35

>> sum(A,1) %column sum
ans =

   369   369   369   369   369   369   369   369   369

>> sum(A,2) %row sum
ans =

   369
   369
   369
   369
   369
   369
   369
   369
   369

>> A.*(eye(9))
ans =

   47    0    0    0    0    0    0    0    0
    0   68    0    0    0    0    0    0    0
    0    0    8    0    0    0    0    0    0
    0    0    0   20    0    0    0    0    0
    0    0    0    0   41    0    0    0    0
    0    0    0    0    0   62    0    0    0
    0    0    0    0    0    0   74    0    0
    0    0    0    0    0    0    0   14    0
    0    0    0    0    0    0    0    0   35

>> sum(sum(A.*(eye(9))))
ans = 369
>> sum(sum(A.*flipud(eye(9)))) %flip diagonal up down
ans = 369
>> A=magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> pinv(A)
ans =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778

>> temp=pinv(A)
temp =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778

>> A*temp
ans =

   1.0000e+00  -1.2323e-14   6.6613e-15
  -6.9389e-17   1.0000e+00   2.2204e-16
  -5.8911e-15   1.2323e-14   1.0000e+00