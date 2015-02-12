function exit_time = brown_exit (interval, x0, dt)

x = x0;
t = 0;

while (and(interval(1) < x, x < interval(2)))
    x = x + sqrt(dt)*randn;
    t = t + dt;
end

exit_time = t;