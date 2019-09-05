function UniqueBestFit(x, y)
    % calculate the number of subplots
    numOfSub = length(x) - 1;
    nrow = ceil(numOfSub ./ 2);
    best = false;
    % plot data and nth order fit
    for i = 1: numOfSub
        subplot(nrow, 2, i);
        % add titles to the subplots
        if i == 1
            subtitle = sprintf('1st Order Fit');
        elseif i == 2
            subtitle = sprintf('2nd Order Fit');
        elseif i == 3
            subtitle = sprintf('3rd Order Fit');
        else
            subtitle = sprintf('%dth Order Fit', i);
        end
        title(subtitle);
        hold on;
        % plot original data points
        plot(x, y, 'rx');
        % polyfit using nth order
        coef = polyfit(x, y, i);
        xs = linspace(min(x), max(x));
        ys = polyval(coef, xs);
        % calculate AAD
        diffSum = 0;
        for j = 1:length(x)
            yfit = polyval(coef, x(j));
            diff = abs(y(j) - yfit);
            diffSum = diffSum + diff;
        end
        AAD = diffSum ./ length(x);
        % plot the fit curve based on AAD
        % and whether the first best fit has already been plotted
        if AAD >= 0.75 % AAD greater than 0.75
            plot(xs, ys, 'k');
        elseif AAD < 0.75 && best == false % AAD less than 0.75,                    
            plot(xs, ys, 'b');             % and best fit not found before
            best = true;
        else
            plot(xs, ys, 'k'); %AAD less than 0.75, and best fit found before
        end
    end
end