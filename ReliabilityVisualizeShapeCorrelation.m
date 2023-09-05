%plot correlation between node movement and shape parameter value
clear
close all
clc
%% Load in correlation matrix
correlation_100 = load('ShapeValue_Vertices_Correlation_N100.txt');
correlation_1000 = load('ShapeValue_Vertices_Correlation_N1000.txt');

correlation  = correlation_1000(11:end, 1:10);
%%
%load in neutral vertices and faces
vertices = load('SMPLNeutralVertices.txt');
faces = load('SMPLFaces.txt');

B1_corr = correlation(:,1);
B2_corr = correlation(:,2);
B3_corr = correlation(:,3);
B4_corr = correlation(:,4);
B5_corr = correlation(:,5);
B6_corr = correlation(:,6);
B7_corr = correlation(:,7);
B8_corr = correlation(:,8);
B9_corr = correlation(:,9);
B10_corr = correlation(:,10);

%create marker colors
cmap = jet(256);
n = length(B1_corr);

B1_v = rescale(B1_corr, 1, 256);
B2_v = rescale(B2_corr, 1, 256);
B3_v = rescale(B3_corr, 1, 256);
B4_v = rescale(B4_corr, 1, 256);
B5_v = rescale(B5_corr, 1, 256);
B6_v = rescale(B6_corr, 1, 256);
B7_v = rescale(B7_corr, 1, 256);
B8_v = rescale(B8_corr, 1, 256);
B9_v = rescale(B9_corr, 1, 256);
B10_v = rescale(B10_corr, 1, 256);

markerColors_1 = zeros(n,3);
%assign marker colors according to the value of the data
for i = 1:n
    row1 = round(B1_v(i));
    markerColors_1(i,:) = cmap(row1,:);
    
    row2 = round(B2_v(i));
    markerColors_2(i,:) = cmap(row2,:);
    
    row3 = round(B3_v(i));
    markerColors_3(i,:) = cmap(row3,:);
    
    row4 = round(B4_v(i));
    markerColors_4(i,:) = cmap(row4,:);
    
    row5 = round(B5_v(i));
    markerColors_5(i,:) = cmap(row5,:);
    
    row6 = round(B6_v(i));
    markerColors_6(i,:) = cmap(row6,:);
    
    row7 = round(B7_v(i));
    markerColors_7(i,:) = cmap(row7,:);
    
    row8 = round(B8_v(i));
    markerColors_8(i,:) = cmap(row8,:);
    
    row9 = round(B9_v(i));
    markerColors_9(i,:) = cmap(row9,:);
    
    row10 = round(B10_v(i));
    markerColors_10(i,:) = cmap(row10,:);
end


%% plotting
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_1, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B1_corr) max(B1_corr)])
title('Correlation between B1 and magnitude of node movement')
saveas(gcf,'fig1.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_1, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B1_corr) max(B1_corr)])
title('Correlation between B1 and magnitude of node movement')
saveas(gcf,'fig2.png')

% plot B2 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_2, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B2_corr) max(B2_corr)])
title('Correlation between B2 and magnitude of node movement')
saveas(gcf,'fig3.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_2, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B2_corr) max(B2_corr)])
title('Correlation between B2 and magnitude of node movement')
saveas(gcf,'fig4.png')

% plot B3 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_3, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B3_corr) max(B3_corr)])
title('Correlation between B3 and magnitude of node movement')
saveas(gcf,'fig5.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_3, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B3_corr) max(B3_corr)])
title('Correlation between B3 and magnitude of node movement')
saveas(gcf,'fig6.png')

% plot B4 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_4, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B4_corr) max(B4_corr)])
title('Correlation between B4 and magnitude of node movement')
saveas(gcf,'fig7.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_4, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B4_corr) max(B4_corr)])
title('Correlation between B4 and magnitude of node movement')
saveas(gcf,'fig8.png')

% plot B5 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_5, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B5_corr) max(B5_corr)])
title('Correlation between B5 and magnitude of node movement')
saveas(gcf,'fig9.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_5, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B5_corr) max(B5_corr)])
title('Correlation between B5 and magnitude of node movement')
saveas(gcf,'fig10.png')

% plot B6 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_6, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B6_corr) max(B6_corr)])
title('Correlation between B6 and magnitude of node movement')
saveas(gcf,'fig11.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_6, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B6_corr) max(B6_corr)])
title('Correlation between B6 and magnitude of node movement')
saveas(gcf,'fig12.png')

% plot B7 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_7, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B7_corr) max(B7_corr)])
title('Correlation between B7 and magnitude of node movement')
saveas(gcf,'fig13.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_7, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B7_corr) max(B7_corr)])
title('Correlation between B7 and magnitude of node movement')
saveas(gcf,'fig14.png')

% plot B8 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_8, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B8_corr) max(B8_corr)])
title('Correlation between B8 and magnitude of node movement')
saveas(gcf,'fig15.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_8, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B8_corr) max(B8_corr)])
title('Correlation between B8 and magnitude of node movement')
saveas(gcf,'fig16.png')

% plot B9 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_9, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B9_corr) max(B9_corr)])
title('Correlation between B9 and magnitude of node movement')
saveas(gcf,'fig17.png')

f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_9, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B9_corr) max(B9_corr)])
title('Correlation between B9 and magnitude of node movement')
saveas(gcf,'fig18.png')

% plot B10 correlation on neutral mesh
f = figure;
f.Position = [100 100 800 800];
view(0,90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_10, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B10_corr) max(B10_corr)])
title('Correlation between B10 and magnitude of node movement')
saveas(gcf,'fig19.png')


f = figure;
f.Position = [100 100 800 800];
view(180,-90)
axis off
p1 = patch('Faces', faces+1, 'Vertices', vertices);
set(p1,'FaceColor',[.89 .855 .788], 'FaceLighting','gouraud','EdgeColor','none','FaceAlpha',.7,'SpecularStrength',.5);
light('Position',[1 1 1]*1000,'Style','infinite');
light('Position',[-1 -1 1]*1000,'Style','infinite');
light('Position',[-.5 -.5 -11]*1000,'Style','infinite');
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
hold on
scatter3(vertices(:,1), vertices(:,2), vertices(:,3),[],markerColors_10, 'filled','MarkerEdgeColor','k')
colormap('jet')
h = colorbar()
caxis([min(B10_corr) max(B10_corr)])
title('Correlation between B10 and magnitude of node movement')
saveas(gcf,'fig20.png')