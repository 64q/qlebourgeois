%
% views - main loader of views
%

:- consult(helpers).

:- multifile user:body//2.

user:app_header(Title) -->
  html([
    nav([role('navigation')],
      div(class('nav-wrapper container'), [
        a([id('logo-container'), class('brand-logo'), href='/'], Title),
        ul(class('social-links'), [
          li(a(href='https://www.facebook.com/qlebourgeois', 'Facebook')),
          li(a(href='https://twitter.com/qlebourgeois', 'Twitter')),
          li(a(href='https://github.com/64q', 'Github')),
          li(a(href='https://www.linkedin.com/in/qlebourgeois', 'Linkedin'))
        ])
      ])
    )
  ]).

user:app_footer -->
  html(
    div(class('container'), [
      'Quentin Lebourgeois – ',
      a(href='mailto:contact@qlebourgeois.me', 'Contact'),
      ' – 2020'
    ])
  ).

user:body(q, Body) -->
  html(
    body([
      header(
        \app_header('~/.qlebourgeois')
      ),
      div([id(content)], Body),
      footer(
        \app_footer
      ),
      script(src('/assets/js/app.js'), '')
    ])
  ).

:- consult(home).
