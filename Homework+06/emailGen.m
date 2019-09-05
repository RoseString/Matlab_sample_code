function GTEmails = emailGen(info)
    emails = {};
    % get data from the info cell array
    for i = 1:length(info{1})
        firstName = lower(info{1}{i}(1));
        lastName = lower(info{2}{i}(1:end));
        num = num2str(info{3}(i));
        % concatenate info
        email = [firstName, lastName, num, '@gatech.edu'];
        emails{i,1} = email;
    end
    GTEmails = emails;
end