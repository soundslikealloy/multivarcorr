function run_multivarcorr(data_file)
    %%%%% Main function to run Multivariate and non-parametric association 
    %%%%% measure based on paired orthants
    % data_name (string): name of file (with the extension)

    addpath(genpath('lib')); % make every subfolder with functions accessible to the code
    
    %% Read data and create results structure
    data = loadData(data_file);
    
    %% Run multi-varaible correlation script
    dataset = data.values;
    [~, d] = size(dataset);
    [iota, iota_pval, n, deltas, relyRange, symbolMatrix_up, symbolMatrix_down] = multivarcorr(d, dataset);

    %% Display results
    fprintf('> Dimensions: %i\n', d)
    fprintf('> Reliable range limit: %.4f\n', relyRange)
    fprintf('> Number of observations: %i\n', n)
    
    fprintf('\n>> List of coefficients Data trends | δ coefficients | ι coefficients (p-value) \n')
    for i = 1:2^d/2
        fprintf("%s%s | %.4f | %.4f (%.4f)\n", symbolMatrix_up(i,:), symbolMatrix_down(i,:), deltas(i), iota(i), iota_pval(i))
    end
    fprintf('\n')
end