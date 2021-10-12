>> t=[0:0.01:0.98];
>> y1=sin(2*pi*4*t);
>> plot(t,y1);
>> y2=cos(2*pi*4*t);
>> plot(t,y2);
>> plot(t,y1);
>> hold on; %plot graphs over each other
>> plot(t,y2);
>> plot(t,y2,'g'); %plot with colour green
>> xlabel('time');
>> ylabel('value');
>> legend('sin','cos');
>> title('my plot');
>> print -dpng 'myPlot.png' %save plot
>> figure(1);plot(t,y1);
>> figure(2);plot(t,y2);
>> subplot(1,2,1); %divide plot into 1x2 grid, plot 1st graph
>> plot(t,y1);
>> subplot(1,2,2); %divide plot into 1x2 grid, plot 2nd graph
>> plot(t,y2);
>> axis([0.5 1 -1 1])
>> clf; %clears image
>> A=magic(5);
>> imagesc(A) %plot colourful graph corresponding to values
>> imagesc(A), colorbar, colormap gray
>> imagesc(magic(15)), colorbar, colormap gray %colorbar gives legend of color for range of values
>> a=1,b=2,c=3 %comma chaining of function calls
a = 1
b = 2
c = 3
>> a=1;b=2;c=3; %semicolon does not print anything