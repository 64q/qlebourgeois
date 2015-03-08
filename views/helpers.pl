%
% common shortcut methods
%

css(URL) -->
  html(
    link([ 
      type('text/css'),
      rel('stylesheet'),
      href(URL)
    ])
  ).

favicon(URL) -->
  html(
    link([ 
      type('image/png'),
      rel('icon'),
      href(URL)
    ])
  ).
