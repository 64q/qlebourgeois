%
% bootstrap
%

:- use_module(library(http/http_log)).

:- use_module(library(http/thread_httpd)).

:- consult(settings).
:- consult(views/views).
:- consult(app/app).

%% sv_start(+Port)
%
sv_start(Port) :-
  http_server(http_dispatch, [port(Port)]).

%% sv_stop(+Port)
%
sv_stop(Port) :-
  http_stop_server(Port, []).

%% bootstrap
%
bootstrap :-
  print('Launching website on port 5560...'),
  sv_start(5560).

% initialization phase of the webapp
:- initialization(bootstrap).
