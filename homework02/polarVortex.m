function twoDays = polarVortex(temps)
    % get rid of NaNs
    transTemps = temps';
    validTemps = transTemps(~isnan(transTemps))';
    % get the index of the biggest difference
    [~, index] = max(abs(diff(validTemps)));
    % get the two days with biggest difference
    twoDays = index: index + 1;
end