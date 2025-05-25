n1=10:-1:0;
n=0:10;
x=1:11;
y=x.*n;
y1=2^2;
y2=x.^n;
y3=ones(1,5);
y4=ones(2,5);
y5=zeros(2,5);
y6=size(n);%size shows the dimension of array or matrices.
y7=length(n); 
%plot y=x^2-10x+15, where x is 1 to 11
y8=x.^2-10.*x+15;
%plot(x,y8)
%Enhanced Control of Plotted lines
%plot(x,y8,'--ko','LineWidth',3.0,'MarkerSize',6,'MarkerEdgeColor','r','MarkerFaceColor','g')
%figure(1)
%plot(x,y8)
%figure(2)
%plot(x,y8,'-ko','LineWidth',3.0,'MarkerSize',6,'MarkerEdgeColor','r','MarkerFaceColor','g')
subplot(2,2,1);
plot(x,y8);
subplot(2,2,2);
plot(x,y8,'or','LineWidth',3.0,'MarkerSize',6,'MarkerEdgeColor','r','MarkerFaceColor','g')
y9=linspace(0,10,50);
%Divide 10 number of data into 25 divisions







