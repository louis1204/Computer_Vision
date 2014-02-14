function hw2p1
x = [];
sigma = [1 2.5 4.0 5.5];

%Binomial Approximation
for j=1:size(sigma, 2)
    %calculate plots for gaussian function
    fh = @(x)(Gaussian1D(sigma(j), x));
    
    subplot(2,2, j)
    fplot(fh, [-3*sqrt(sigma(j)), 3*sqrt(sigma(j))]);
    title(sigma(j))
    %calculate binomial kernel with pascal's triangle
    pascal = GetPascalTriangleRow(sigma(j));

    hold
    y = [-1 * (size(pascal, 2)-1)/2: 1 * (size(pascal, 2)-1)/2];
    stem(y, pascal);
    pascal = [];
    x = [];
end
end

function res = Gaussian1D(sigma, x)
res = exp(((-1*(x^2))/(2*(sigma)))) * 1/(sqrt(2*pi*(sigma)));
end

function res = GetPascalTriangleRow(sigma)
N = (4*sigma) + 1;

res = [];

for i = 0:N-1
    res = [res nchoosek(N-1, i)];
end
res = res .* 2^(-(N-1));
end