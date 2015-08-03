%
% webapp settings
%

:- use_module(library(settings)).

% webapp core config
:- setting(webapp_port, number, 5560, 'Webapp listen port').

% webapp display settings
:- setting(webapp_title, atom, '~/.qlebourgeois website', 'Webapp name').
