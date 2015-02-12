clear;

M = 1000;

times = zeros(1,M);

for i=1:M
    times(i) = brown_exit([-0.5 0.5], 0, 1e-5);
end

t = mean(times);

diff = abs(t - (-0.5 - 0.5)^2)