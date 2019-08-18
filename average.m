
count = 0;
sum = 0;
sum1 = 0;
%sum2 = 0;
p = 1;
%for p = 1 : 18
    for i = 1 : 36000
        sum = sum + power(num(i, 5),2);
        sum1 = sum1 + power(num(i,4),2);
         % sum2 = sum2 + power(num(i,6),2);
        
        count = count + 1;
        if (count == 2000)
            %m=sum;
            av_emg(1,p) = sqrt(sum/count);
            av_kg(1,p) = sqrt(sum1/count);
           % av_emg1(1,p) = sqrt(sum2/count);
            sum = 0;
            count = 0;
            p = p + 1 ;
            %i;
        end
    end
 plot(av_kg,av_emg)
 xlabel('Force(In Kg.)');
 ylabel('EMG(In mcV)');
 title('Forece Vs. EMG(RMS)');
%end
%plot3(av_kg,av_emg,av_emg1)