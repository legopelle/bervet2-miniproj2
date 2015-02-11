function motion = algo1(Tf, x0, dt)

steps = ceil(Tf/dt);
motion = zeros(steps, 2);

motion(1,1) = x0(1);
motion(1,2) = x0(2);

for i=2:steps
    motion(i, :) = motion(i-1,:) + sqrt(dt)*randn(1,2);
end