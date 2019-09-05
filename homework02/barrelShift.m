function shiftVec = barrelShift(vec, num)
    % calculate the real moves
    move = mod(num, length(vec));
    % extract the left part
    vec1 = vec(1: end - move);
    % extract the right part
    vec2 = vec(end - move + 1: end);
    % merge the right and left parts
    shiftVec = [vec2 vec1];
end