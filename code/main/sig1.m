%读取信号
Signal = VarName5'; 
longSignal=Signal(1:2:end);
%longSignal=Signal(1:end);
startIndex = 1; % 截取的起始索引
lengthOfSegment = 8000; % 截取的长度

% 截取信号段
signalSegment = longSignal(startIndex:(startIndex + lengthOfSegment - 1))';


%signal=Y.Data;