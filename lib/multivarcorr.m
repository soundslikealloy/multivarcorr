function [RKtau, RKt_pval, num_obs, deltas, rr, symbolMatrix_up, symbolMatrix_down] = multivarcorr(D, dataset)
    %%%%% Function to calculate n-τ coefficients
    % D (integer): number of variables considered
    % dataset (struct): table of data (number observations)x(dimensions)

    %% Data info
    [num_obs, ~] = size(dataset);                                           % Number observations
    binomial = nchoosek(num_obs, 2);                                        % Binomial coefficient

    %% Paired orthants info
    N = 2^D/2;                                                              % Number of paired orthants and δ coefficients
    rr = 1/N;                                                               % Reliable point

    %% Signs permutations with repetitions
    signs = [1 0];                                                          % 1: Positive / 0: Negative
    C = cell(D, 1);
    [C{:}] = ndgrid(signs);
    y = cellfun(@(x) {x(:)}, C);
    sC = [y{:}];

    %% Paired orthants matrix (3D: [NxDx2])
    pOh1 = sC(1:N, 1:D);
    pOh2 = flip(sC(end-N+1:end, 1:D));
    paired_Oh = cat(3, pOh1, pOh2);

    %% δ coefficients
    [F, symbolMatrix_up, symbolMatrix_down, binomial_untied] = formalism_Oh(N, num_obs, dataset, paired_Oh, binomial);
    deltas = (1 / binomial_untied) * F;
    
    %% Rabert-Kendall's n-τ
    if D == 2
        RKtau = deltas(1) - deltas(2);       
    else
        p = nchoosek(1:N, 2);
        RKtau_comb = sortrows(reshape(p(:,perms(1:2)),[],2));

        deltas_diff = reshape(1 + (deltas(RKtau_comb(:,1)) - deltas(RKtau_comb(:,2))), [N-1,N]);
        RKtau = transpose(geomean(deltas_diff)-1);
    end
    
    %% p-value
    var = (2 * (2 * num_obs + 5)) / (9 * num_obs * (num_obs - 1));
    RK_Zt = RKtau ./ sqrt(var);
    RKt_pval = 2 * normcdf(-abs(RK_Zt));
    
    if D == 2
        RKtau = [RKtau; NaN];
        RKt_pval = [RKt_pval; NaN];
    end
end

%% Auxiliar functions
function [F, symbolMatrix_up, symbolMatrix_down, binomial_untied] = formalism_Oh(N, nobs, dataset, paired_Oh, binomial)
    %% Definition of variables
    F = [];
    symbol_signs_up = [];
    symbol_signs_down = [];

    %%
    for i = 1:N
        binomial_untied = binomial;
        i_pOh = cat(1, paired_Oh(i, :, 1), paired_Oh(i, :, 2));

        f = 0;
        for jj = 2:nobs
            for ii = 1:jj-1
                diff = dataset(jj,:) - dataset(ii,:);
                % Tied data detection
                if ~all(diff)
                    binomial_untied = binomial_untied - 1;
                    continue;
                end
                f = f + or(all(eq(i_pOh(1,:), gt(diff,0))), all(eq(i_pOh(2,:), gt(diff,0))));
            end
        end
        F = [F; f];

        %% Symbol assignment
        s_up = sprintf('[%s]', replace(num2str(i_pOh(1,:)), {'1' '0'}, {'+' '-'}));
        s_down = sprintf('[%s]', replace(num2str(i_pOh(2,:)), {'1' '0'}, {'+' '-'}));

        symbol_signs_up = [symbol_signs_up; s_up];
        symbol_signs_down = [symbol_signs_down; s_down];
    end
    symbolMatrix_up = symbol_signs_up; symbolMatrix_down = symbol_signs_down;
end