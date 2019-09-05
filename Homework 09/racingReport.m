function racingReport(coef, time, name)
    % use low-level file I/O
    % to open a file for writing
    filename = [name, '_Report.txt'];
    fout = fopen(filename, 'w');
    % calculate the velocity
    v = polyval(coef, time);
    % calculate the acceleration
    dcoef = [];
    for i = 1 : length(coef) - 1
        % calculate the coefficients for the derivative
        newcoef = coef(i) .* (length(coef) - i);
        dcoef = [dcoef, newcoef];
    end
    a = polyval(dcoef, time);
    % calculate the position
    pcoef = [];
    for i = 1 : length(coef)
        % calculate the coefficients for the integral
        newcoef = coef(i) ./ (length(coef) - i + 1);
        pcoef = [pcoef, newcoef];
    end
    pcoef = [pcoef, 0];
    position = polyval(pcoef, time);
    % format output
    fprintf(fout, '%s\n', '--------------------------------------');
    fprintf(fout, 'MATLAB Racing Report: %s\n', name);
    fprintf(fout, '%s\n', '--------------------------------------');
    fprintf(fout, 't = %d\n\n', time);
    fprintf(fout, 'Position at t:\n %d m\n\n', position);
    fprintf(fout, 'Velocity at t:\n %d m/s\n\n', v);
    fprintf(fout, 'Acceleration at t:\n %d m/s^2\n\n', a);
    fprintf(fout, '%s', '--------------------------------------');
end