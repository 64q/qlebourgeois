%
% core - contains core functions
%

:- use_module(library(http/http_dispatch)).

% default page implementation
app_page(Title, Content) :-
  setting(webapp_title, BaseTitle),
  reply_html_page(q, [
      title([
        BaseTitle, ' ', Title
      ]),
      % website custom resources
      \favicon('/assets/img/favicon.png'),
      \css('/assets/css/q.css'),
      % meta for mobile
      meta([name('viewport'), content('width=device-width, initial-scale=1.0')])
    ], Content
  ).
