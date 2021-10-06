>> A
A =

   1   2
   3   4
   5   6

>> size(A)
ans =

   3   2

>> sz=size(A)
sz =

   3   2

>> size(sz) %size command itself returns a matrix
ans =

   1   2

>> size(A,1) %size of rows
ans = 3
>> size(A,2) %size of columns
ans = 2
>> v=[1 2 3 4]
v =

   1   2   3   4

>> length(v)
ans = 4
>> length(A) %length by longest dimension, usually used for vectors only
ans = 3
>> length([1;2;3;4;5])
ans = 5
>> pwd
ans = C:\Users\ashis\Desktop\Machine Learning
>> cd 'C:\Users\ashis\Desktop\Machine Learning'

>> ls

 Volume in drive C is Windows
 Volume Serial Number is D8A7-789F

 Directory of C:\Users\ashis\Desktop\Machine Learning

[.]
[..]
BasicOperations.m
[bdP_oVfPQ7iT_6FXz_O4gg_8e2598a9242e4ab88c127242f96363f1_ex1-octave]
bdP_oVfPQ7iT_6FXz_O4gg_8e2598a9242e4ab88c127242f96363f1_ex1-octave.zip
featuresX.dat
GNU Octave (CLI).lnk
GNU Octave (GUI).lnk
octave-6.3.0-w64-installer.exe
priceY.dat
[sjgXNPPoQeK4FzTz6DHi_g_eccf120011744eec9984c1de1de8e0f1_ex1-ex8-matlab]
sjgXNPPoQeK4FzTz6DHi_g_eccf120011744eec9984c1de1de8e0f1_ex1-ex8-matlab.zip

               8 File(s)    372,874,407 bytes
               4 Dir(s)  896,484,143,104 bytes free
>> load featuresX.dat

>> load priceY.dat

>> who %shows variables available in memory

Variables visible from the current scope:

A          I          ans        c          priceY     v
C          a          b          featuresX  sz         w

>> load ('featuresX.dat'); %loading data

>> size(featuresX)
ans =

   10    2

>> size(priceY)
ans =

   10    1

>> whos

Variables visible from the current scope:

variables in scope: top scope

   Attr Name           Size                     Bytes  Class
   ==== ====           ====                     =====  =====
        A              3x2                         48  double
        C              2x3                         48  double
        I              6x6                         48  double
        a              1x1                          8  double
        ans            1x2                         16  double
        b              1x2                          2  char
        c              1x1                          1  logical
        featuresX     10x2                        160  double
        priceY        10x1                         80  double
        sz             1x2                         16  double
        v              1x4                         32  double
        w              1x10000                  80000  double

Total is 10090 elements using 80459 bytes

>> clear ans

>> whos

Variables visible from the current scope:

variables in scope: top scope

   Attr Name           Size                     Bytes  Class
   ==== ====           ====                     =====  =====
        A              3x2                         48  double
        C              2x3                         48  double
        I              6x6                         48  double
        a              1x1                          8  double
        b              1x2                          2  char
        c              1x1                          1  logical
        featuresX     10x2                        160  double
        priceY        10x1                         80  double
        sz             1x2                         16  double
        v              1x4                         32  double
        w              1x10000                  80000  double

Total is 10088 elements using 80443 bytes
>> v=priceY(1:5)
v =

    3000
    6000
    9000
   12000
   15000

>> whos
Variables visible from the current scope:

variables in scope: top scope

   Attr Name           Size                     Bytes  Class
   ==== ====           ====                     =====  =====
        A              3x2                         48  double
        C              2x3                         48  double
        I              6x6                         48  double
        a              1x1                          8  double
        b              1x2                          2  char
        c              1x1                          1  logical
        featuresX     10x2                        160  double
        priceY        10x1                         80  double
        sz             1x2                         16  double
        v              5x1                         40  double
        w              1x10000                  80000  double

Total is 10089 elements using 80451 bytes

>> save hello.mat v
>> ls
 Volume in drive C is Windows
 Volume Serial Number is D8A7-789F

 Directory of C:\Users\ashis\Desktop\Machine Learning

[.]
[..]
BasicOperations.m
[bdP_oVfPQ7iT_6FXz_O4gg_8e2598a9242e4ab88c127242f96363f1_ex1-octave]
bdP_oVfPQ7iT_6FXz_O4gg_8e2598a9242e4ab88c127242f96363f1_ex1-octave.zip
featuresX.dat
GNU Octave (CLI).lnk
GNU Octave (GUI).lnk
hello.mat
octave-6.3.0-w64-installer.exe
priceY.dat
[sjgXNPPoQeK4FzTz6DHi_g_eccf120011744eec9984c1de1de8e0f1_ex1-ex8-matlab]
sjgXNPPoQeK4FzTz6DHi_g_eccf120011744eec9984c1de1de8e0f1_ex1-ex8-matlab.zip

               9 File(s)    372,874,571 bytes
               4 Dir(s)  896,478,846,976 bytes free
>> clear
>> whos
>> load hello.mat
>> v
v =

    3000
    6000
    9000
   12000
   15000

>> save hello.txt v -ascii %save in human readable format
>> A=[1 2;3 4;5 6]
A =

   1   2
   3   4
   5   6

>> A(3,2)
ans = 6
>> A(2,:) %':' means every element along that row or column
ans =

   3   4

>> A(:,2)
ans =

   2
   4
   6

>> A([1 3],:) %get all elements whose index is 1 or 3
ans =

   1   2
   5   6

>> A(:,2)=[10;11;12]
A =

    1   10
    3   11
    5   12

>> A=[A,[100;101;102]]
A =

     1    10   100
     3    11   101
     5    12   102

>> size(A)
ans =

   3   3

>> A(:) %put all elements of A into a single vector
ans =

     1
     3
     5
    10
    11
    12
   100
   101
   102

>> A=[1 2;3 4;5 6];
>> B=[11 12;13 14;15 16];
>> C=[A B]
C =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>> C=[A;B]
C =

    1    2
    3    4
    5    6
   11   12
   13   14
   15   16

>> [A,B]
ans =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>> size(C)
ans =

   6   2