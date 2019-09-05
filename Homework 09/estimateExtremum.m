function extremum = estimateExtremum(x, y)
    % calculate derivatives
    dydx = diff(y) ./ diff(x);
    % get average x-value over each small interval
    xavg = [];
    prev = 0;
    for i = 1: length(x)
        if i ~= 1;
            xavg = [xavg, (x(i) + prev) ./ 2];
        end
        prev = x(i);
    end
    % interpolate x value where the dirivative is 0 
    xextremum = interp1(dydx, xavg, 0);
    % interpolate y value where the dirivative is 0 
    yextremum = interp1(x, y, xextremum);
    extremum = [xextremum; yextremum];
end