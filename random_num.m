%n = 100;
random_numbers = randi([1,100]);
figure;
stem(1,random_numbers,'filled');
plot(random_numbers, '-o');
title('Random Number Sequence');
xlabel('Index');
ylabel('Random Value');
grid on;
