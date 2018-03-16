function s = file2cellstr(filename)

if nargin == 0
    [filename, ~] = uigetfile('*.m', 'Pick a MATLAB code file');
end

fid = fopen(filename);

s = textscan(fid,'%s')

fclose(fid);

end