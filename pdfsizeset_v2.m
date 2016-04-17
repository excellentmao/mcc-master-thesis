%
% Creat a size-fixed pdf file of figure
%
% Written by: Cecil Mao, UESTC
% Email: excellentmao@outlook.com
% Created: 12 March 2016
%
close all
clc
clear all

h = figure; % Figure Properties

x=1:10;
y=-x/10;
a=plot(x,y);
hold on
plot(x,y*2)
%% font name & font size
figure_FontName='Times New Roman';
figure_FontSize=10.5; % Chinese "ÎåºÅ×ÖÌå"

ax = gca; % Axes Properties
ax.XLabel.FontName=figure_FontName;
ax.XLabel.FontSize=figure_FontSize;
ax.XLabel.String='Hello, it''s me, I was wondering';

ax.YLabel.FontName=figure_FontName;
ax.YLabel.FontSize=figure_FontSize;
ax.YLabel.Position(1)=0.2; % try to avoid the overlap between YLabel and YLabelTick 
ax.YLabel.String='Hello(Adele)';

ax.Title.FontName=figure_FontName;
ax.Title.FontSize=figure_FontSize;
ax.Title.String='Hello from the other side';
ax.TitleFontWeight='normal'; % default is 'bold'

ax.FontName=figure_FontName;
ax.FontSize=figure_FontSize;


bx = legend('mcc','zfq'); % legend Properties
bx.FontName=figure_FontName;
bx.FontSize=figure_FontSize;

%% fix the size of genarated figure 
fig = gcf; % current figure handle
fig.Position=[100,100,520,380]; % [left bottom width height]

h.Units='inches';

pos = h.Position;

h.PaperPositionMode='Auto';
h.PaperUnits='inches';
h.PaperSize=[pos(3), pos(4)];

print(h,'filename','-dpdf','-r0') % Save as a pdf file