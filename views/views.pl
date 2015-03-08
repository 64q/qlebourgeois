%
% views - main loader of views
%

:- consult(helpers).

:- multifile user:body//2.

user:app_header(Title) -->
  html([
    div(class(social),
      p([
        a(href='https://www.facebook.com/qlebourgeois', 'Facebook'), ' // ',
        a(href='https://twitter.com/qlebourgeois', 'Twitter'), ' // ',
        a(href='https://github.com/64q', 'Github'), ' // ',
        a(href='https://www.linkedin.com/in/qlebourgeois', 'Linkedin')
      ])
    ),
    h1(
      a(href='/', Title)
    )
  ]).

user:app_footer -->
  html(
    p([
      'Quentin Lebourgeois – ', 
      a(href='mailto:contact@qlebourgeois.me', 'Contact'),
      ' – 2015'
    ])
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
