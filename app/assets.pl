%
% assets - define how to serve static content
%

:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_files)).

:- use_module(library(http/html_write)).

:- multifile user:file_search_path/2.

% assets configuration
user:file_search_path(assets, 'assets').
http:location(assets, root(assets), []).

% file serving
serve_files(Request) :-
  http_reply_from_files('assets', [], Request).
serve_files(Request) :-
  http_404([], Request).

% handler for assets
:- http_handler(assets(.), serve_files, [prefix]).
