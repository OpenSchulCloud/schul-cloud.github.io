---
layout: blog-post
title: Startseiten anderer open-source Projekte und Schlussfolgerungen für die Schul-Cloud
language: de
author:
- niccokunzmann
---

Wie sehen die Startseiten anderer open-source Projekte aus?
Wie werden Entscheidungen gefällt?
Diese und mehr Fragen soll dieser Blogpost beantworten und das Beste für die
Schul-Cloud herausnehmen.

<!-- more -->

Der Blogpost behandelt erst die Fragen, die zu den verschiedenen Organisationen
gestellt werden.
Dann ist wichtig, diese Fragen zu beantworten.
Als letztes handelt es sich um eine Auswertung: Was ist für die Schul-Cloud wichtig?


Fragen
------

Die Fragen können gesammelt werden, indem wir Entwickler fragen:

- Wenn neue Leute dazukommen, was ist dir wichtig?
- Was sollten sie tun?
- Wie würdest du gern mit ihnen reden?
- Was denkst du brauchen sie?

Fragen an Organisationen sind:


- Welche Menupunkte hat die Startseite? Was könnte das Interesse der Besucher sein, wenn sie auf den Punkt klicken?
- Wie und wo wird kommuniziert?
- Was denken sie, dass Neuentwickler zuerst machen wollen?
- Wo hosten sie diese Seite und ist sie editierbar?
- Wie viele Leute arbeiten in der Organisation?
  - Hauptentwickler
  - Gelegenheitshelfer
- Gibt es Treffen/Hackathons/Konferenzen?
- Wie werden verschiedene Sprachen gehandhabt?
- Welche Programmiersprachen werden benutzt?
- Was fällt besonderes bei der Organisation auf?
  - [fastlane1][]
    - Scaling: 
      - Improve your error messages
      - Make it easy to find existing issues
      - Use of bots
        - issue template
        - Close Stale issues
        - Answers based on keywords -> fix underlying issues
        - Locking resolved and inactive issues
      - Steering the direction
        - Vision.md file -> Readme driven development
      - Scaling contribution: [moya1]
      - Code of Conduct
      - Onboarding instructions
        - setup repositories
      - Keeping your code base simple
      - Be welcoming and friendly
      - Extension:
        - Offer dynamic configuration files (ala DSL)
        - Allow local extensions
          - content service, klar so struktutriert
          - client und server in microservices (Zitat Bachelorarbeit?)
        - Allow the community to extend and build on your project using plugins
- Welche Tools benutzen sie?
  - [fastlane1][]
    - fastlane + bot
    - danger http://danger.systems/ 
- Wodurch wird gewährleistet, dass die Neuzugänge nicht die Entwickler vom Entwickeln abhalten?
  Fastlane bot und danger sorgen für eine mindestqualität.
- Welche Schwierigkeitsstufen zum Einstegen gibt es? Wie sind sie dokumentiert?
- wie werden externe Beiträge verwaltet, bezahlt, langfirstig angebunden?
- Wie steuern die Community/Maintainer/andere Leute das Projekt?
- Wie werden Features gehandhabt?
  - [fastlane1]
    - Let people submit features as issues, and label them as feature request. This way other users can easily find them using the search, and upvote them
    - Have a separate page where users can submit and upvote feature requests
    - Don’t accept new features, and feature freeze your project
- Nutzen Maintainer die Software selbst? Warum?
 - [fastlane1]
    - Maintainers stop being users of the project as it grows -> Maintainer müssen ab und zu die Software selbst benutzen, damit sie wissen, wofür sie es tun. Lösung: Fastlane nutzt Fastlane selbst.
- Welche Probleme haben große open-source Gemeinschaften? Wie werden sie gelöst?
  - [maintainerburnout]: Maintainer Burn Out:
    - Die Maintainer sind unter sehr viel Druck, arbeiten öffentlich und können
      durch andere negativ angegangen werden.  
      Schutz bietet z.B. ein Code-of-Conduct, der erlaubt, solche Diskussionen zu beenden oder zu verändern.[fastlane1]
      Außerdem gibt es ein Vision-Statement, das dafür sorgt, dass Feature-Anfragen geschlossen werden können,
      wenn sie nicht zur Diskussion gehören.
      Vielerlei Werkzeuge gibt es, um verschiedene Aufgaben zu automatisieren.
      Wichtig ist auch der richtige Ort, um Featurewünsche abzugeben.


Organisationen zum Untersuchen:

- Linux
- OpenWRT
- FOSSASIA
- Django
- Python
- Golang
- OpenTechSchool
- CoderDojo
- Blockly
- Nodejs
- Loklak
- Rust


Was ist für die Schul-Cloud wichtig?
------------------------------------

- Welche Ideen scheinen als wären sie Umsetzenswert?

- Welche Grundsätze treffen auch auf die Schul-Cloud zu?

- Was ist ein interessantes Feature aber nicht nützlich in der Schul-Cloud?

Quellen, die zu lesen sind
--------------------------

DONE:
[fastlane1]: https://krausefx.com/blog/scaling-open-source-communities
[moya1]: https://github.com/Moya/contributors
[maintainerburnout]: http://thejameskyle.com/dear-javascript.html
- http://blog.testdouble.com/posts/2014-12-02-the-social-coding-contract.html
  - dependency hell and what is my application?
  - Maintainer happiness cycle
  - Kommunikation verbessern: email -> live chat -> telephone -> video chat -> meet in person
    https://youtu.be/HFRU6eQKp4Y?t=35m3s
    Das schreckt Trolle ab.
- First PR labels:
  https://github.com/librariesio/libraries.io/blob/12f2e053077301fa173fe63197d72b20995fe241/app/models/issue.rb#L8

TODO:
- zeroMQ
- https://libraries.io
- https://github.com/zkat/pacote/blob/latest/CONTRIBUTING.md#request-support






