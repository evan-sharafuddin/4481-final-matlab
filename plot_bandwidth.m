function plot_bandwidth(open_loop_tfs)
% plots the bode plot of the closed loop transfer function
closed_loop_tfs = {size(open_loop_tfs)};
for i = 1:length(closed_loop_tfs)
closed_loop_tfs{i} = open_loop_tfs{i} / (1 + open_loop_tfs{i});

end
figure
hold on
for i = 1:length(closed_loop_tfs)
    bode(closed_loop_tfs{i});
end
% setoptions(plot, 'FreqUnits', 'Hz')
end