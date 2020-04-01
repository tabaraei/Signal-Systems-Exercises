clear;
clc;

% Getting number
x = input('Please insert a number : ');
clc;

% Even or Odd
if mod(x,2) == 0
    disp('Entered number is Even');
else
    disp('Entered number is Odd');
end

% Remainder
fprintf('Remainder after division by 4 = %d\n', mod(x,4));

% Prime
prime = true;
for i=2:sqrt(x)
    if mod(x,i) == 0
        prime = false;
    end
end

if prime == true
    disp('Entered number is Prime');
else
    disp('Entered number is not Prime');
end