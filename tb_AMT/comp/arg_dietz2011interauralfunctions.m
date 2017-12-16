function definput=arg_dietz2011interauralfunctions(definput)

  definput.keyvals.signal_level_dB_SPL = 70;
  definput.keyvals.tau_cycles  = 5; % see Fig. 3c in Dietz (2011)
  definput.keyvals.compression_power = 0.4;

  % ask for simulating temporal resolution of binaural processor
  % this returns the *_lp values
  definput.flags.lowpass = {'lowpass','nolowpass'};

%
%   Url: http://amtoolbox.sourceforge.net/doc/comp/arg_dietz2011interauralfunctions.php

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

