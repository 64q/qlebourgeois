%
% views - main loader of views
%

:- consult(helpers).

:- multifile user:body//2.

user:app_header(Title) -->
  html([
    div(class(social),
      img(src='/assets/img/facebook-32.png')
    ),
    h1(
      a(href='/', Title)
    )
  ]).

user:app_footer -->
  html(
    p('Quentin Lebourgeois – 2015')
  ).

user:body(q, Body) -->
  html(
    body([
      div(class(wrapper), [
        header(
          \app_header('~/ Quentin Lebourgeois')
        ),
        div(id(content), Body)
      ]),
      footer(
        \app_footer
      )
    ])
  ).

:- consult(home).
