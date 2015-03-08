%
% handlers - define http handlers
%

:- use_module(library(http/http_dispatch)).

% home handler
home_route(_) :-
  app_page('', \home_content).

% mapping
:- http_handler('/', home_route, []).
