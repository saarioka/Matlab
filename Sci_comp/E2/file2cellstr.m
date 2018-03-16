function s = file2cellstr(filename)

if nargin == 0
    [filename, ~] = uigetfile('*.m', 'Pick a MATLAB code file');
end

fid = fopen(filename);

s = []

while 1
    tline = fgetl(fid);
    if ~ischar(tline), break, end
        s = [s tline];
end

fclose(fid);

end