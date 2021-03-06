%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: M:\HS_Project\Feed_Forward_PUF.xlsx
%    Worksheet: Sheet1
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2019/04/24 21:38:54

%% Import the data
[~, ~, raw] = xlsread('M:\HS_Project\Feed_Forward_PUF.xlsx','Sheet1');
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
FF_PUF = table;

%% Allocate imported array to column variable names
FF_PUF.Challenge_Bits = data(:,1);
FF_PUF.Response_Bits = data(:,2);
FF_PUF.RX23 = data(:,3);
FF_PUF.RX45 = data(:,4);

%% Clear temporary variables
clearvars data raw R;

%% CALCULATING UNIFORMITY OF THE FEED FORWARD FF_PUF PUF

Count_UNI = sum(FF_PUF.Response_Bits(:) == 1);
Uniformity_FF_PUF = Count_UNI/length(FF_PUF.Response_Bits);

%% Calculating the Reliability

Count_REL = sum(FF_PUF.Response_Bits(:) == 1) + sum(FF_PUF.Response_Bits(:) == 0);
Reliability_FF_PUF_PUF = Count_REL/length(FF_PUF.Response_Bits);

%% Calculating the Uniqueness

Count_UNIQ =  sum(FF_PUF.Response_Bits == FF_PUF.RX23 == FF_PUF.RX45);
FF_PUF_Uniqueness = (height(FF_PUF) - Count_UNIQ)/height(FF_PUF);