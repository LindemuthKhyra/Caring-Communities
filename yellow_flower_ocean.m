%This code produces a project that promotes community care by providing resources and support to marginalized individuals and communities.

%% Setting up Variables
%Setting up figure parameters
figure('Name','Community Care Program','NumberTitle','off','Position',[1000,1000,1000,1000]);

%Loop parameters 
i = 1;
j = 1;

%Defining Resources
food = 'Food Banks';
counseling = 'Counseling';
support = 'Support Groups';

%Defining Marginalized Communities
refugees = 'Refugees';
indigenous = 'Indigenous People';
homeless = 'Homeless';

%Creating An Cell Array for Communities
community_names = {refugees,indigenous,homeless};

%% Plotting Resources
%Setting up x and y axis
x_axis = linspace(0, 3, 4);
y_axis = linspace(0, 3, 4);

%Plotting the data
hold on;

%Looping each resource
for k = 1:length(x_axis) 
    %Creating resource legend
    resource_legend = {food,counseling,support};

    %Plotting the resources
    plot(x_axis(k),y_axis(k), 'b*');
    for m = 1:length(resource_legend)
        text(x_axis(m), y_axis(m), resource_legend{m}, 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom'); 
    end
   
    %% Plotting Marginalized Communities
    %Looping each community
    while i <= length(community_names)
        %Creating community legends
        community_legend = {refugees,indigenous,homeless};

        %Plotting the communities
        plot(x_axis(i), y_axis(j+1), 'ro'); 
        for n = 1:length(community_legend)
            text(x_axis(n), y_axis(j+1), community_legend{n}, 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom'); 
        end

        %Creating connection lines between resources and marginalized communities
        plot([x_axis(k) x_axis(i)], [y_axis(k) y_axis(j+1)], 'k');
        
        %Incrementing i and j
        i = i + 1;
        j = j + 1;
    end
    
    %Restarting the loop
    i = 1;
    j = 1;
end

%Adding title and x and y axes
title('Community Care Program');
xlabel('Resources');
ylabel('Marginalized Communities');

%Adding legend 
legend('Resources','Marginalized Communities');

%Adding grid 
grid on;

%Displaying figure
set(gca,'visible','on','xtick',[1 2 3],'ytick',[1 2 3]);
box('on');
hold off;