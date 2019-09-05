function extrapCalc(x, y, colors, bounds)
    % initialize settings of the three subplots
    % and plot the actual data
    for i = 1:3
        % create subplots
        subplot(3, 1, i);
        % set the bounds of subplots
        axis(bounds);
        hold on;
        % add labels
        xlabel('x values');
        ylabel('y values');   
        % add titles
        if i == 1
            title('Interp1');
        elseif i == 2
            title('Spline');
        else
            title('Polyfit');
        end
        % plot actual data
        plot(x, y, colors(5));
    end
    
    % use a for-loop to draw first 4 lines in the subplots
    for i = 1:4
        % get data
        idxEnd = i .* length(x) ./ 5;
        xdata = x(1:idxEnd);
        ydata = y(1:idxEnd);
        % get color
        color = colors(i);
        % use interp1 to add a line to the first subplot
        subplot(3, 1, 1);
        yinterp1 = interp1(xdata, ydata, x, 'cubic');
        plot(x, yinterp1, color);
        % use spline to add a line to the second subplot
        subplot(3, 1, 2);
        yinterp2 = spline(xdata, ydata, x);
        plot(x, yinterp2, color);
        % use polyfit to add a line to the third subplot
        subplot(3, 1, 3);
        coef = polyfit(xdata, ydata, length(xdata)-1);
        yinterp3 = polyval(coef, x);
        plot(x, yinterp3, color);
    end
end