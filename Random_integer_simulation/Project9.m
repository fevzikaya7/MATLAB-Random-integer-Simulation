clear all;
clc;

writerObj=VideoWriter('Record.avi');
open(writerObj);
x = zeros(1000,1);
y = zeros(1000,1);
x(1) = 0;
y(1) = 0;
i = 2;

while i<1000
    x(i) = (2.*rand(1)-1 );
    y(i) = (2.*rand(1)-1 );
    plot(x,y,'.'); 
    axis([-3 3 -3 3]); drawnow
    i = i+1;
    frame=getframe;
    writeVideo(writerObj,frame);
end

axis([-3 3 -3 3]);  
frame=getframe;
writeVideo(writerObj,frame);
close(writerObj);

