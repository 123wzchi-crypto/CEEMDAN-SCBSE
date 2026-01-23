addpath('C:\Users\Wzc\Desktop\轴承处理代码\CEEMDAN')
%ceemdan分解原始信号
Nstd = 0.2;
NR = 500;
MaxIter = 5000;
SNRFlag=1;

[modes its]=ceemdan(signalSegment,0.2,500,5000);
t=1:length(signalSegment);

[a b]=size(modes);

figure;
subplot(a+1,1,1);
plot(t,signalSegment); 
ylabel('signalSegment')
set(gca,'xtick',[])
axis tight;

for i=2:a
    subplot(a+1,1,i);
    plot(t,modes(i-1,:));
    ylabel (['IMF ' num2str(i-1)]);
    set(gca,'xtick',[])
    xlim([1 length(signalSegment)])
end;

subplot(a+1,1,a+1)
plot(t,modes(a,:))
ylabel(['IMF ' num2str(a)])
xlim([1 length(signalSegment)])

figure;
boxplot(its);