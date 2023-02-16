function data = loadData(filename)
    %%%%% loadData.m - Load variables and data from Excel sheet and
    %% initialisation of structs
    data = struct;
    
    % check if data file exists
    data_file = sprintf('Data/%s', filename);
    if ~isfile(data_file)
        error('The data file ''%s'' does not exist.', filename)
    end
    
    %% Data
    [dataValues, varNames] = xlsread(data_file, strcat('data'));
    if ~isempty(varNames)
        data.varNames = varNames;
    end
    data.values = dataValues;
end