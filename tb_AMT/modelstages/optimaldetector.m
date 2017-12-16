function mue = optimaldetector(ir_stim,template)
%OPTIMALDETECTOR  Generic optimal detector for the CASP and Breebaart models
%
%   This is a correlation-based optimal detector for a signal known exactly
%   see Green & Swets (1966) for more details.
%
%   Url: http://amtoolbox.sourceforge.net/doc/modelstages/optimaldetector.php

% Copyright (C) 2009-2014 Peter L. Søndergaard and Piotr Majdak.
% This file is part of AMToolbox version 0.9.6
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

corrmue = ir_stim.*template;
optfactor = sqrt(numel(corrmue));

% Take mean over all dimensions of internal representation and correct for
% optimalityfactor.
mue = mean(corrmue(:))*optfactor;


%OLDFORMAT

