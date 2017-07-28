---
layout: blog-post
title: Was kann die Schul-Cloud von anderen open-source Projekten lernen?
language: de
author:
- niccokunzmann
---

Am 27. Juni war ich beim [Zalando Tech Talk zu open-source][z1].
Die Frage war: Was bedeutet es, in open-source involviert zu sein?

<!-- more -->

Grundlagen für wachsende open-source Gemeinschaften
---------------------------------------------------

Aus einem Gespräch mit [Claus Matzinger][cm1] von [Crater.io][c1] zu der Frage
"Was braucht eine open-source Gemeinschaft, um sich zu entwickeln?"
sind folgende Punkte entstanden:

1. Eine Community braucht einen Kommunikationskanal, z.B. Slack, E-Mail, Gitter, ...
2. Wichtig ist, dass Leute eine Einführung erhalten.
   Es ist schwierig, neue Leute zu finden, die langfristig beitragen möchten.
   Viele sind nur kurz dabei und weg, wenn das Problem gelöst wurde.
3. Feedback ist wichtig:
   Was habe ich in meiner Pull-Request gut gemacht,
   was könnte man noch anders machen, wo wird mein Code jetzt verwendet, hilft er anderen?
   Gibt es Guidelines, Konventionen, automatische Tests?
   Feedback aber auch von der Community an die Entwickler:
   Was wird gebraucht, as ist wichtig, was kann oder sollte in die Software?
4. Meetups machen und besuchen:
   Durch die Treffen in der eigenen Gemeinschaft, lernt man sich kennen,
   hat neue Ideen und kann Konflikten vorbeugen.
   Es gibt viel zu lernen, neue Leute habe Gesichter für das Projekt und eine
   persönliche Beziehung dazu.
   Dadurch, dass man über das Projekt in anderen Meetups redet, verbinden sich
   Gemeinschaften und Kompetenzen.
   So war es beispielsweise bei diesem Meetup so, dass jemand seine Kompetenz
   angeboten hat und einem anderen Projekt auf den neuesten Stand der Forschung
   helfen wollte.

Die Podiumsdiskussion hat folgende Aspekte betont:
1. **Readability**: 
   Wie ist die Software lesbar? Gibt es eine README-Datei? Kann ich den Code
   verstehen?
   Ein Beispiel:
   Ein wesentlicher Publikumsbeitrag war die Feststellung, dass die Algorithmen,
   die in open-source Software verwendet werden, veraltet sind. Ein Mitglied
   der Podiums stimmte zu, dass sie Algorithmen aus den 80ern verwenden.
   Der Grund ist, dass diese oft gut genug sind, verständlich und weit bekannt.
2. **Planung**:
   Es ist wichtig zu wissen, wo das Projekt hinsteuert, was das Ziel ist.
   Dazu legt man auch eine Visionsdatei an, die es Maintainern ermöglicht,
   die Beiträge zu selektieren und der Gemeinschaft, diese mitzubestimmen.
   [Quelle][k1]
   Die Planung gibt das Vertrauen, dass das Projekt auch lange noch bestehen
   bleibt.
3. **Nutzerunterstüzung**:
   Was brauch ein Nutzer, um beizutragen? Wie kann ein Nutzer beitragen?
   Wie kann das skalieren, wenn mehr Nutzer dazu kommen aber die Maintainer
   gleich bleiben in der Zahl?  
   Wenn Maintainer den neuen Nutzern im persönlcihen Gespräch helfen, passiert
   folgendes: Das Problem wird gelöst, der Nutzer denkt, er braucht den
   Maintainer, neue Nutzer, die das selbe Problem haben, brauchen wieder die
   Hilfe des Maintainers.  
   Deswegen ist es wichtig, mindestens eine gemeinsame Kommunikationsplattform
   zu haben. Auf dieser Plattform werden Nutzer angelernt. Neue Nutzer
   können mit anderen, die ähnliche Probleme haben in Verbindung treten
   und alte Nutzer kennen das Problem oder die Lösung vielleicht schon und
   kommen dazu, wenn ein Problem auftritt.
   Dadurch kann die Gemeinschaft mehr und mehr slebsständig lernen, aus
   Anfängern werden Beitragende, aus Beitragenden werden Maintainer.
   Im Abschnitt [Dokumentation][dokumentation] wird behandelt, wie die Rollen
   festgeschrieben werden.
4. Menschlicher Anteil  
   GitHub hat viele gute Entwickler dadurch rekrutiert, dass GitHub-Mitarbeiter
   wo sie waren auf Kosten der Firma Treffen organisieren und Getränke ausgeben
   konnten. Durch den persönlichen Kontakt konnte eine längere Verbindung
   entstehen, die schließlich dazu führt, dass andere Leute beitragen.
   [Fagerholm et al][fagerholm] zeigt, dass open-source Beiträge wesentlich von
   einem Mentoring profitieren.
5. Lizenz  
   Damit Nutzer beitragen oder die Software nutzen, muss ihnen klar sein,
   ob sie diese Software benutzen dürfen.
   Es gibt Lizenzen, die explizit als
   open-source Lizenzen von der Open Source Initiative anerkannt sind.
   Lizenzen gestalten, was man mit der Software machen darf und machen muss,
   wenn man sie verwendet.

Nach diesen Punkten möchte ich die bestehenden open-source Organisationen
untersuchen.
Weiteres kam aus anderen Gesprächen und der Podiumsdiskussion:

1. Es gibt Standarts, die für Codebeiträge gelten sollen.
   Es stellt sich heraus, dass diese Standarts einen Beitrag blockieren können.
   Leute stellen eine Pull-Request, weil sie dem Projekt etwas geben wollen,
   danach wird diese aber von Tests, Reviews und ähnlichem blockiert.
   Besprochen wurde, dass 
   1. Codebeiträge, die zum Kern der Software gehören, hohen Queliätsstandarts
      entsprechen.
   2. Codebeiträge, die Randteile der Software betreffen können alle angenommen
      werden. Dabei handelt es sich oft um Plugins, Module, Anwendungen,
      die nicht von allen Nutzern benutzt werden müssen aber zum Ökosystem
      gehören.

Weitere Resultate aus der Diskussion
------------------------------------

### Geld

Geld ist ein ungelöstes Problem, so heißt es auf dem Panel. 
Viele open-source Enthusiasten haben aber ein gespaltenes Verhältnis zu Geld.
Es kann helfen, z.B. wenn in einer Gemeinschaft Fähigkeiten knapp sind.
Diese können dann eingekauft werden. So hat z.B. die open-source Software
Pytest einen Logowettbewerb gemacht.
Oftmals werden auch Kapazitäten für Speicherplatz oder Server benötigt, die mit
Geld bezahlt werden. So speichern viele Programmiersprachen ihre Pakete
in einer Paketverwaltnung wie PyPi oder NPM, wovon die Nutzer die Bibliotheken
runterladen können.
Organisationen wie Google oder GutHub bezahlen die Entwickler auch dafür,
dass sie einen Teil ihrer Arbeitszeit für andere open-source Projekte aufwenden.

TODO: Schul-Cloud

### Monolyth oder Modular

Wenn ein kleines open-source Projekt entsteht, so löst es ein kleines Problem
einer oder weniger Personen.[Quelle][s1] Mit der Zeit kommen neue Leute dazu
und die Software wird ausgeweitet auf andere Use-Cases.
Dabei kann z.B. ein Monolyth entstehen, eine Software, die an einer Stelle
verwaltet wird, um diese zu Programmieren man viele Teile verstehen oder ansehen muss,
die vielleicht garnicht zum Problem gehören.

Als die KDE-Gemeinschaft umstrukturiert wurde, wurde aus einem Monolyth eine
modulare Software.
Daraufhin konnten sie einen Anstieg in Beiträgen verzeichnen. 
Neue Beiträge beziehen sich auf abgegrenzte Bereiche der Software 
und der Aufwand an initialem Wissen ist reduziert.

Eine solche Softwareumstrukturierung lässt sich mit Conways Law betrachten:
Die Kommunikationspfade in der Software richten sich nach den Kommunikationspfaden
der Teams.
Eine Umstrukturierung der Software geht also auch mit einer Umstrukturierung
der Gemeinschaft einher. Die Struktur der Gemeinschaft muss mit einfließen.

### Open Gouvernance

Einen Satz fand ich interessant: 

> Open-source is open governing in context of software.  

Dahinein fallen Aspekte wie Marketing, Promotion, Quality Assurance.

Beitragsspannen
---------------

Wie oft einzelne Leute beitragen, ist sehr verschieden.
Die meisten tragen nur einmal bei.
Eine offene Frage ist, wie kann man messen, ob die Hürden, beizutragen
zu streng sind.
Um die Quelität der Offenheit sicherzustellen, müssen solche Hürden untersucht
werden.

Verhaltenskodex
---------------

Seit 2017 hat Github eine Seite eingeführt, die zeigt, was man alles noch an
dem Projekt verbessern kann. Dazu zählt auch, dass ein Code of Conduct, ein
Verhaltenskodex im Projekt festgeschrieben wird.
Der Verhaltenskodex legt fest, welches Verhalten erwünscht ist und welches nicht,
welche Vorteile ein Befolgen habt und welche Strafen im Verstoß angewandt werden.[Quelle][w1]

Peter Hintjens kritisiert einen Verhaltenskodex zu haben.[Quelle][h1]
Er geht davon aus, dass dieser auf falschen Annahmen beruht und ausgenutzt werden
kann, um Macht auszuüben.

Die Rust Community (TODO) soll ihren Code of Conduct lieben.

Vielfalt
--------

Diverse Teams liefern bessere Ergebnisse.
Um von der Vielfalt zu profitieren, streben manche Gemeinschaften, z.B. Apache
nach einer Vielfalt in ihrer Mitgliederschaft.

Das Github open-source Survey ist eine Umfrage, zu open-source Organisationen,
Entwicklern und Software.[Quelle][o1] Sie sagt:

> Open source is used by the whole world, but its contributors don't yet reflect its broad audience.

Was braucht es, um eine solche diverse Gemeinschaft zu erstellen?

- Geduld: Die Gemeinschaft zu verändern kostet viel Zeit.
- Paarung: Menschen aus unterrepräsentierten Gruppen werden mit Leuten
  aus der Gemeinschaft verkuppelt. Es entstehen persönlcihe beziehungen,
  Vorurteile können abgebaut werden und eine Integration ist leichter möglich.
  Auch in [Fagerholm et al][fagerholm] kann dazu Zustimmung gefunden werden.
- Wie trägt man zum ersten Mal bei?
  Für den ersten Beitrag hat man nur begrenzte Zeit, kennt die Leute nicht und
  weiß nicht, was man erwarten kann.
  Diese Beiträge sind de Grundlage für zukünftige größere Beiträge.
  Sie sind besonders anfällig: Ein erster schlecher Eindruck kann auf das
  ganze Projekt projeziert werden und zukünftige Beiträge verhindern.
- Nur open-source für seine Projekte zu nutzen aber nicht weiter beizutragen
  ist narzistisch. Es gibt so viele Projekte, auf die viele aufbauen
  und open-source hat eine riesige Lücke an Beiträgen zu wichtiger Infrastruktursoftware.
  [Quelle][osr]

TODO:
  
Der Kommunikationskanal
-----------------------

- Über welche Kanäle wird kommuniziert? Wofür sind sie bestimmt?

Dokumentation
-------------
[dokumentation]: #dokumentation

- Maintainer und Machtstatsu
- PR
- Build
- first contribution

[z1]: https://www.meetup.com/Zalando-Tech-Events-Berlin/events/241815023/
[cm1]: https://twitter.com/claus__m
[c1]: https://crater.io/
[k1]: https://krausefx.com/blog/scaling-open-source-communities
[fagerholm]: http://www.juergenmuench.com/publications/uploads/09162b2358b531ccfd186a98461314fd528f3ba1.pdf
[s1]: http://blog.testdouble.com/posts/2014-12-02-the-social-coding-contract.html
[w1]: https://en.wikipedia.org/wiki/Code_of_conduct
[h1]: http://hintjens.com/blog:108
[o1]: http://opensourcesurvey.org/2017/
[osr]: https://www.fordfoundation.org/library/reports-and-studies/roads-and-bridges-the-unseen-labor-behind-our-digital-infrastructure/
