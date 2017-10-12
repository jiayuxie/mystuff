function b = randfp(t, L, U)
    % function b = randfp(t, L, U)
    %
    % Generate a random normalized binary floating-point number with
    % t digits, and an exponent in the range [L,U]. For example,
    %
    %   b = randfp(5, -4, 4)
    %
    % might yield
    %
    %   b = '-0.10111b-2'
    %
    % or
    %
    %   b = '+0.11100b4'
    %
    % Note that the output is a string, and that the first character is
    % always either a '+' or '-'. The number after the 'b' is
    % the exponent for the base 2, although the exponent itself is
    % represented in base-10. For example,
    %
    %   b = '+0.11100b4'
    %
    % represents the number 0.11100 x 2^4.
    %
    
    % ==== Replace the code below ====
    mp = unidrnd(2); %determind the minus or plus
    if (mp == 1)
	b ='+0.1';
    else 
	b = '+0.1';
    end
    for i=1:1:t-1
       	cur = unidrnd(2);
	cur = cur-1;
	b = [b num2str(cur)];
    end
    b = [b 'b'];
    expt = L + unidrnd(U-L+1)-1;
    b = [b num2str(expt)];	
    

