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

(1) Der Kommunikationskanal
---------------------------

- Über welche Kanäle wird kommuniziert? Wofür sind sie bestimmt?



[z1]: https://www.meetup.com/Zalando-Tech-Events-Berlin/events/241815023/
[cm1]: https://twitter.com/claus__m
[c1]: https://crater.io/
[k1]: https://krausefx.com/blog/scaling-open-source-communities