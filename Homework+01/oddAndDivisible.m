function isOddAndDivisible = oddAndDivisible(number, firstDivisor, secondDivisor)
% check if the number is odd
isOdd = (mod(number, 2) == 1);
% check if the number is divisible by the frist divisor
isFirstDivisible = (mod(number, firstDivisor) == 0);
% check if the number is divisible by the second divisor
isSecondDivisible = (mod(number, secondDivisor) == 0);
% check if all three criteria are satisfied
isOddAndDivisible = (isOdd && isFirstDivisible && isSecondDivisible);
end