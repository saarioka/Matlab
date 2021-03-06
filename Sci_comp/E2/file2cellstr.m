function s = file2cellstr(filename)
% FILE2CELLSTR reads the text file filename
% and returns the nonempty lines in the cell array s

if nargin == 0
    [filename, ~] = uigetfile('*.m', 'Pick a MATLAB code file');
end

fid = fopen(filename);

s = cell(0,1);

while 1
    tline = fgetl(fid);
    if ~ischar(tline), break, end
    if ~isempty(tline)
        s{end+1,1} = tline;
    end
end

fclose(fid);

end