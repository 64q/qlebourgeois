%
% home template
%

home_content -->
  html([
    div(class('my-moto'), [
      h1(class('center'), 'Développeur Web'),
      div(class('center'), [
        h5('Avide de nouveaux défis pour le Web'),
        p('Développeur Web chevronné PHP (Symfony2 / Doctrine), Java (Spring / Hibernate) passionné de code.')
      ])
    ]),
    div(class('container'), [
      div(class('prez-items'), [
        div(class('prez-item'), [
          h1('Présentation du site'),
          p([
            'Le site sur lequel vous naviguez actuellement est propulsé grâce au framework web inclus dans Prolog.'
          ]),
          p('Prolog est un langage de programmation logique, proposant une autre approche du travail de développeur.'),
          p('Le site a été développé autour du framework http inclus nativement dans SWI-Prolog 6. Celui-ci permet de construire rapidement un site web.')
        ]),

        div(class('prez-item'), [
          h1('Liens utiles'),
          p([
            'Pour en apprendre plus, le site officiel est une mine d\u0027informations : ',
            a(href='http://www.swi-prolog.org/', 'http://www.swi-prolog.org/')
          ]),
          p([
            'Pour le code source, c\u0027est ici : ',
            a(href='https://github.com/64q/qlebourgeois', 'github.com/64q/qlebourgeois')
          ])
        ]),

        div(class('prez-item'), [
          h1('Contact'),
          p('Pour toute remarque, demande de devis, étude ou question, veuillez me laisser un message sur mon adresse mail ci-dessous.'),
          p([
            'Pour me contacter, veuillez m\u0027écrire sur GitHub.'
          ])
        ])
      ])
    ])
  ]).
