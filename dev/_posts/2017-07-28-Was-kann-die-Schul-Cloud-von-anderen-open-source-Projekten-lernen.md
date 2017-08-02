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
4. **Menschlicher Anteil**:  
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
Um die Qualität der Offenheit sicherzustellen, müssen solche Hürden untersucht
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
  
Der Kommunikationskanal
-----------------------

- Über welche Kanäle wird kommuniziert? Wofür sind sie bestimmt?

Dokumentation
-------------
[dokumentation]: #dokumentation

Open-source bedeutet oft, dass die Software dezentral undüber viele Zeitzonen
hinweg entwickelt wird.
Im Falle der Schul-Cloud kann man sich auch vorstellen, dass die Mitarbeiter
zu Arbeitszeiten und die externen Freizeitentwickler eher zu den Abendstunden
oder an Feiertagen eitragen.
Aus der Diskussion ergaben sich folgende Sachverhalte, die deswegen in 
dokumentierter Form abgelet werden:
- Erster Beitrag:  
  Was braucht ein erster Beitrag, was muss man tun, damit man ander Software entwickeln kann?
  Django hat dazu ein Tutorial geschrieben, dass eine alte Version
  benutzt, in der dann ein Fehler behoben wird. Schritt für Schritt wird erklärt.
  Am Ende hat man alles bis zur Annahme des behobenen Fehlers durchlaufen.  
  Viele Projekte, so auch die Schul-Cloud stellen Fehlerbeschreibungen (Issues)
  bereit, die sich durch hohe Ausführlichkeit kennzeichnen.
  Sie geben die Chance, an die Hand genommen zu werden und durch einen eins-zu-eins-Kontakt
  mit einem Entwickler in die Entwicklung und die Lösung des Fehlers eingeführt zu werden.
  Oftmals werden diese kombiniert mit einer Beschreibung, wie man das Projekt
  für die Entwicklung aufsetzt, da diese Schritte für jeden dieser Problemberichte
  relevant ist.
- Build  
  Was braucht es, damit ein Build erfolgreich ist?
  Neben dem Aufsetzen und modifizieren nutzen Projekte Tests, die automatisch laufen
  und sicherstellen, dass bestehende Features noch funktionieren.
  Welche Tests auszuführen sind sollte auch dokumentiert sein.
  Dass die Tests laufen und eventuelle neue Tests geschrieben werden, ist oftmals
  eine Vorraussetzung dafür, dass die neuen Beiträge in die Software eingepflegt werden.
- Pull-Request  
  Eine Pull-Request, zu Deutsch "Ziehanfrage", ist eine Anfrage, die
  Quelltextveränderung in den Programmcode neuer Softwareversionen einzubauen.
  Nicht alle Pull-Requests werden angenommen. Wenn eine Pull-Request abgeleht wird,
  so werden oftmals Stunden an Arbeitabgelehnt und der Beitragende kann das
  auf sich projizieren. Hilflosigkeit, Wut und Trauer können gefühlt werden.
  Diese Enttäuschungen können durch die Art der Kommunikation bei der Pull-Request
  und die Kommunikation als Dokumentation vor dem ersten menschlichen Kontakt
  beeinflusst werden.  
  Github stellt z.B. Pull-Request-Schablonen bereit, die den ersten Text einfüllen.
  Damit werden die Nutzer geleitet und fragen beantwortet:
  Was für eine Art Fehler ist das? Wo tritt er auf? Welche Umgebung hat das Programm, wenn es den Fehler erzeugt?
  Kann und wie kann der Fehler wieder erzeugt werden?
  TODO: Beispiel LokLak
  Auf GitHub, bevor man eine Pull-Request erstellt, wird man aufgefordert, die
  Contributing.md-Datei zu lesen, sollte diese im Repository bestehen.
  Dort sind allgemeine Erwartungen an Beiträge zum Projekt festgehalten.
  Wie sehen Commits aus? Welchen Stil verwendet man? TODO: find source
- Maintainer und Machtstatus  
  Es gibt Positionen in open-source Projekten, die unterschiedliche
  Machtpositionen einnehmen. Hier sind ein paar Beispiele:
  - Gründer der Projekte wie Guido von Rossum für Python oder Linus Torvalds
    genießen oft hohes Ansehen und haben Entscheidungsgewalt, wohin es
    mit der Software geht. In Manchen Projekten spricht man von
    benevolenter Diktatur, also einer Zentralen Person, die wohlwollend ist.
  - Maintainer sorgen für den Erhalt der Software. Ihnen liegt oft die langfristige
    Beherrschbarkeit der Software am Herzen. Im Gegensatz zu manchen Beitragenden
    sind sie nicht zufrieden, wenn ein Beitrag einen Fehler löst und dabei andere
    Qualitäten der Software wie Verständlichkeit oder Kompatibilität beieinträchtigt.
    Oftmals werden zum Schutze der Maintainer Regeln erlassen, beispielsweise,
    dass nur kleine Beiträge angenommen werden oder dass diese vorher diskutierbar sein müssen.
    TODO: Ref Maintainer Burnout
  - Beitragende tragen oft nur einmal zur Software bei. Manche bleiben länger debei
    und erhalten mehr Wissen. Dadurch werden sie fähig, anderen Beitragenden zu helfen.
    
    TODO:  Studie: wie oft wird beigetragen?
  - Nutzer benutzen die Software. Es ist oftmals nicht klar, wie viele Nutzer
    die Software einsetzen. [s1] spricht davon, dass die Erfinder
    bestimmter Software Nutzer waren und aufhören, Nutzer der Software zu sein,
    die sie einsetzen. Um trotzdem mit den Nutzern verbunden zu sein, sollten
    sie die Software selbst einsetzen.
    Im Falle von [k1] wird die Software Fastlane verwendet selbst verwendet,
    um Fastlane zu verwalten.
  - Trolle benutzen oft negative Sprache, um Macht auf Entscheidungen oder
    Projekte auszuüben. Sie erhalten Macht durch die Anonymität und 
    scheinbare Konsequenzenlosigkeit ihrer Taten.[s1]
  
  Im Kontext von Open-Gourvernment stellt sich die Frage, wodurch diese Macht
  legitimiert ist.
  
Nicht zu vergessen ist, dass jede Bedingung, die an Beiträge gestellt wird,
ein Filter ist, der dafür sorgt, dass Beiträge nicht angenommen werden können.
Im Kontext von open-source stellt sich hier die Frage:
Wann ist open-source wirklich offen?

Kommunikationsebenen
--------------------
[kommunikationsebenen]: #kommunikationsebenen

> Es ist kauptt, dass moderner "Diskurs" für
> Leute mit den wenigsten Gefühlen und der meisten Freizeit optimiert ist. 

[Vortrag Minute 33:44][s1]

Ebenen der Kommunikation:

- Asynchron: Main, Issues, Twitter
- Echtzeittext bei Mehrdeutigkeit und Unverständnis
- Sprachdialog, um sich einzufühlen
- Videokondferenz, um zu sehen, was der andere fühlt
- Persönliches Treffen, wenn das alles nicht geht, erzeugt gute Kompromisse

In diese Ebenen zu eskalieren, kann Trolle abschrecken. Wenn man ein Hangout vorschlägt,
dann erodiert die Anonymität eines Trolls.
Als Schlussfolgerung zieht [s1], dass eine Eskalation in andere Kommunikationsformen
einfach sein sollte. Weitere Beispiele für Kommuniktion sind Live-Coding oder eine Zeit mit einem 
anderen Entwickler zu buchen.

Wann ist open-source wirklich offen?
------------------------------------

Ob ein open-source Projekt wirklich offen ist, ist eine Frage des Maßstabes.
Es ist eine Frage wie "Ist das Bildungssystem durchlässig?" oder 
"Sind die Nutzer zufrieden?"
Es gibt viele Bedingungen, die an Beiträge geknüpft sind, die die Software
verändern und daraufhin wieder die Zielgruppe beeinflussen, die die Beiträge liefert.

Schaut man sich Verhaltenskodexe an, so findet man häufig die Ablehnug bestimmter
Art von Diskriminierung. Hier ein Beispiel:

> Wir verpflichten uns, Teilnahme an diesem Projekt für jeden angenehm zu gestalten, 
> unabhängig vom Grad der Erfahrung, Geschlecht, Geschlechtszugehörigkeit, 
> -ausdruck, -orientierung, Behinderung, persönlichem Auftreten, Körpergröße,
> Rasse, ethnischer Zugehörigkeit, Alter, Religion oder Nationalität.

[Übersetzt aus Moya Code of Conduct][m1]

Peter Hintjens weißt in seinem Blog darauf hin, dass ein Code of Conduct auch
gegen seine Intension genutzt werden kann, zu schützen.[h1]

Ein Problem sehe ich bei der Ablehnung bestimmter Diskriminierung in dem 
Fokus auf die Ablehnung. Diese stellt noch keine Alternative zur Verfügung, die
erwünscht ist. Eine Diskussion darüber, ob es eine Verletzung gab,
kann also ohne ebenbürtige Gegenrede der Vorwurf der Diskriminierung begünstigt werden.
Die in Abschnitt [Kommunikationsebenen][kommunikationsebenen] beschriebenen
Kommunikationsmuster werden nicht besprochen.
Die im Recht und der Mediation übliche Einbeziehung Dritter ist im Moya-
Verhaltenskodex via E-Mail angesprochen.

In seinem Blogartikel "How to capture an open-source Project"[h2], beschreibt
Hintjens, dass er aus Ethik und Selbstinteresse nur an open-source Projekten
arbeitet, die ihm garantieren, dass die Software nicht gegen ihn eingesetzt
werden kann, wie man ein open-source Projekt durch die Hauptentwickler übernimmt.

In ihrem Blogpost [The Null Process][n1] argumentiert Kate Heddleston, 
dass ein Null-Prozess einer der schlimmsten implementierten Prozesse ist,
den man haben kann, da dieser jede Reflektion und Verbesserung verhindert.
Nur einen Verhaltenskodex aufzustellen ist also nicht genug.
Es muss geschaut werden, dass es einen reflektierenden Prozess gibt, der
die Situation verbessert. Dazu ist es notwendig, diese auch zu erkennen.







[z1]: https://www.meetup.com/Zalando-Tech-Events-Berlin/events/241815023/
[cm1]: https://twitter.com/claus__m
[c1]: https://crater.io/
[k1]: https://krausefx.com/blog/scaling-open-source-communities
[fagerholm]: http://www.juergenmuench.com/publications/uploads/09162b2358b531ccfd186a98461314fd528f3ba1.pdf
[s1]: http://blog.testdouble.com/posts/2014-12-02-the-social-coding-contract.html
[w1]: https://en.wikipedia.org/wiki/Code_of_conduct
[h1]: http://hintjens.com/blog:108
[h2]: http://hintjens.com/blog:68
[o1]: http://opensourcesurvey.org/2017/
[osr]: https://www.fordfoundation.org/library/reports-and-studies/roads-and-bridges-the-unseen-labor-behind-our-digital-infrastructure/
[m1]: https://github.com/Moya/contributors/blob/master/Code%20of%20Conduct.md
[n1]: https://kateheddleston.com/blog/the-null-process