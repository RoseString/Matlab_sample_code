function out = arrayReplace(array1, array2, num)
    % get the mask
    mask = (array1 == num);
    % mask array1 with array2
    array1(mask) = array2(mask);
    out = array1;
end