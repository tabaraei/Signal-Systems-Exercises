clear;
clc;

% define matrix
A = [4 -5 1; 2 7 -3; 5 3 4];

% switch case options
disp('Please input seleced number for chosen operation');
disp('1) Inverse with MATLAB functions');
disp('2) Inverse with for loops');
disp('3) Transpose with MATLAB functions');
disp('4) Transpose with for loops');

switch input('')
    case 1
        % inverse
        clc;
        disp('Result is :');
        disp(inv(A));
        
    case 2
        % inverse
        clc;
        C = ones(length(A),length(A));
        for i=1:length(A)
            for j=1:length(A)
                B = A;
                B(i,:) = [];
                B(:,j) = [];
                C(i,j) = ((-1)^(i+j))*det(B);
            end
        end
        D = transpose(C);
        Result = (1/det(A)).*D;
        disp('Result is :');
        disp(Result);
        
    case 3
        % transpose
        clc;
        disp('Result is :');
        disp(transpose(A));
    
    case 4
        % transpose
        clc;
        B = ones(length(A),length(A));
        for i=1:length(A)
            for j=1:length(A)
                B(j,i) = A(i,j);
            end
        end
        disp('Result is :');
        disp(B);
        
    otherwise
        disp('Wrong character');
end