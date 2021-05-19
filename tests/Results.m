parfor i = 1:10
  time = Mainfunction;
  disp(time);
  A(i) = time;
end
M = mean(A);
disp('moyenne =');
disp(M);