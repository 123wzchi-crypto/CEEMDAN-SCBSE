%读取信号
longSignal = X048_DE_time; 

startIndex = 20000; % 截取的起始索引
lengthOfSegment = 10000; % 截取的长度

% 截取信号段
signalSegment = longSignal(startIndex:(startIndex + lengthOfSegment - 1));