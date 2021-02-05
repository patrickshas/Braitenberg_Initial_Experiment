%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: /home/p/Downloads/brait02.csv
%
% Auto-generated by MATLAB on 17-Aug-2020 00:12:29

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 10);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4", "VarName5", "VarName6", "VarName7", "VarName8", "VarName9", "VarName10"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
brait02 = readtable("/home/p/Downloads/brait02.csv", opts);

%% Convert to output type
brait02 = table2array(brait02);

plot (brait02 (:,1))
hold on
plot (brait02 (:,2))
hold on
plot (brait02 (:,3))
hold on
plot (brait02 (:,4))
hold on
plot (brait02 (:,5))
hold on
plot (brait02 (:,6))
hold on
plot (brait02 (:,7))
hold on
plot (brait02 (:,8))
hold on
plot (brait02 (:,9))
hold on
plot (brait02 (:,10))

ylabel ('Number of vehicles')
xlabel ('No. of evolutionary iterations')
legend ('vehicle red', 'vehicle blue', 'vehicle green', 'vehicle white','vehicle pink', 'vehicle yellow', 'vehicle cyan', 'vehicle magenta', 'vehicle aquamarine', 'vehicle brown') ,

%% Clear temporary variables
clear opts