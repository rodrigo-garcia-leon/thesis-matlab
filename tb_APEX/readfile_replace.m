function result = readfile_replace(filename,replaces)
% function result = readfile_replace(filename,replaces)
%
% read the given file into result
% and replace all occurences of $$thing$$ by the values in replaces
% e.g.:
%    p.value='smurf';
%    readfile_replace('file.xml', p)
%   will replace all occurences of $$value$$ by smurf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if (~exist(filename, 'file'))
    warning(['Can''t open file ' filename ]);
    return;
end

fields=fieldnames(replaces);

for c=1:length(fields)
    if ( isnumeric(getfield(replaces, fields{c})))
        bla=num2str( getfield(replaces, fields{c}));
        setfield(replaces, fields{c}, bla);
    end
end

result='';
fid=fopen(filename);
while 1
    tline = fgets(fid);
    if ~ischar(tline), break, end
    
    
    for c=1:length(fields)
        if (isnumeric(getfield(replaces, fields{c})))
            bla=num2str( getfield(replaces, fields{c}));
        else
            bla= getfield(replaces, fields{c});
        end
        tline = regexprep( tline, ['\$\$' fields{c} '\$\$'],   bla );
    end
    result=[result tline];
end
fclose(fid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%