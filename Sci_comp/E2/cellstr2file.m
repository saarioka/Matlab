
function cellstr2file(strings, filename)
% CELLSTR2FILE writes the strings in the cell array
% strings into the file filename, one string per line

if nargin == 1
   filename = uiputfile; 
end

assert(ischar(filename), 'Filename must be a string')
assert(iscellstr(strings),'Strings must be a cell array of strings')

fid = fopen(filename, 'w');

for i = 1:(size(strings,2))
    fprintf(fid, '%s\n', strings{i});
end

fclose(fid);

end