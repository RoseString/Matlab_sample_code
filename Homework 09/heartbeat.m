function [area, condition] = heartbeat(x, y, range)
    % calculate the area under curve using cumtrapz funcition
    cumarea = cumtrapz(x, abs(y));
    area = cumarea(end);
    % see what range the area falls into
    if area < range(1)
        condition = sprintf('%s', 'Low Blood Pressure');
    elseif area > range(2)
        condition = sprintf('%s', 'High Blood Pressure');
    else
        condition = sprintf('%s', 'Normal Blood Pressure');
    end
end