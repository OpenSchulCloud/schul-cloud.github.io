---
layout: blog-post
title: Featurewünsche zur Schul-Cloud beitragen
language: de
author:
- niccokunzmann
---

Dieser Text stellt die Hearusforderungen und Möglichkeiten vor,
wie Nutzer selbst User-Stories ausformulieren und so stückweit der Entwicklung und den 
Entwickler näher kommen.
Wie das genau gestaltet wird ist unklar und Feedback von Nutzern, Lehrern und Schülern ist nötig.

<!-- more -->

Die Schul-Cloud stellt Features und Navigationsmöglichkeiten bereit.
Wenn Lehrer und Schüler die Schul-Cloud benutzen, kommen ihnen neue Ideen, 
wie die Oberfläche umgestaltet werden kann.
User-Stories halten diese fest, damit sie implementiert werden können.


Von der User-Story zum Feature
------------------------------

Wenn Schüler oder Lehrer Wünsche für neue Funktionen in der Schul-Cloud haben,
dann können sie diese als User-Story formulieren.

Auf http://tickets.schul.tech gibt es eine Ansammlung von User-Stories.
Eine beispielhafte User-Story würde so aussehen:

1. User-Story
  - **User**: Lehrer XY
  - **E-Mail**: ...
  - **Schule**: Gymnasium XY
  - **Feedback geschickt von**: https://schulcloud.org/files/courses/
  - **Als Lehrer und Schüler**
    möchte ich Daten aus der Cloud per gängigen Transferprotokollen mit meinem Rechner, Tablet austauschen können,
  - **um** übersichtlichen Datenaustausch und -abgleich mit dem persönlichen Datenspeicher zu ermöglichen.
  - **Akzeptanzkriterien**: Option zur Einbindung meiner SchulCloud-Dateiablage als Netzwerk-Laufwerk per DAV, FTP...
2. User-Story
  - **User**: Lehrer XY
  - **E-Mail**: ...
  - **Schule**: Gymnasium XY
  - **Feedback geschickt von**: https://www.schul-cloud.org/account/
  - **Als Lehrer und Schüler**
    möchte ich mein Passwort ändern,
  - **um** mit sicheren Passwörtern zu arbeiten und habe festgestellt, dass 
    das nicht mit jedem Browser möglich war (IExplorer: ja // Firefox: nein)..
  - **Akzeptanzkriterien**: Sollte browserunabhängig funktionieren (spezielle Einstellungen wurden allerdings nicht überprüft).

Dabei ist klar, welche Rolle die Person hat, was sie also im System tun darf: 
Lehrer oder Schüler.
Diese Nutzerstories werden schrittweise zu ausführbaren Text übersetzt, die sicherstellen, 
dass ein Feature auf Dauer in der Schul-Cloud erhalten bleibt.

Bei der Übersetzung der User-Stories zu Tests werden viele Mehrdeutigkeiten sichtbar.
Fragen der Entwickler sind dann z.B:

- Was sind gängige Protokolle? Das kann von Schule zu Schule variieren.
- Wie stelle ich als Nutzer fest, dass das Passwort sich geändert hat?
  (Benachrichtigungstext, neu Einloggen, altes Passwort funktioniert nicht mehr)
- Welche Browser sind zu testen, welche Auflösungen?

Diese Fragen sollten bestenfalls mit den Betroffenen geklärt werden.
Dennoch fallen sie oft erst dann auf, wenn der Entwickler schreibt und feststellt,
dass er viele oder keine Möglichkeiten hat, das Beschriebene umzusetzen.
Dass Nutzer und Programmierer sich austauschen können,
möchte ich im Folgenden als einen Kommunikaitonskanal vorstellen.

Deutsche Tests
--------------

Tests können nicht nur in Programmiersprachen wie JavaScript geschrieben werden.
Es gibt eine Sprache, [Gherkin][gherkin], die es erlaubt, 
lesbare Tests für Features zu schreiben.

Hier ein Beispiel:

    Feature: Ich möchte mein Passwort ändern.
      Ich möchte mit sicheren Passwörtern arbeiten.

      Scenario: Ich gehe auf die Seite, um mein Passwort zu ändern
        Wenn ich mich als Lehrer einlogge,
        Dann sehe ich meinen Namen.
        Wenn ich auf meinen Namen klicke,
        Dann Sehe ich "Passwort ändern"
        Wenn ich auf "Passwort ändern" klicke,
        Dann bin ich auf der Seite zum Passwort ändern
        
      Scenario: Ich ändere mein Passwort
        Wenn ich eingeloggt bin
          Und ich auf der Seite zum Passwort ändern bin,
        Dann sehe ich ein Feld "Neues Passwort"
          Und ein Feld "Passwort Wiederholen"
        Wenn ich in das Feld "Neues Passwort" den Text "wazfgozaewogf" eingebe,
          Und ich in das Feld "Passwort Wiederholen" den Text "wazfgozaewogf" eingebe,
          Und ich Enter drücke,
        Dann sehe ich eine Nachricht "Passwort geändert"

      Scenario: Ich gebe das selbe Passwort nochmal ein
        ...
      
      Scenario: Ich gebe ein bekanntes, unsicheres Passwort ein
        ...
        
      Scenario: Ich gebe kein Passwort ein
        ...
        
      Scenario: Ich gebe verschiedene Passwörter ein
        ...

Hier sieht man, dass das der einfachen Aufgabe, ein Passwort zu ändern, 
viele andere Fälle werden.
Martin Fowler beschreibt in seinem Artikel [Business Readable Domain Specific Language][fowler-1], 
dass Programmieren durch diese Genauigkeit gekennzeichnet ist und diese nicht
entfernt werden kann.

Im Vergleich: Test und User-Story
---------------------------------

User-Stories haben folgende Eigenschaften:

- Sie sind auf Deutsch.
- Sie sind oft nicht eins zu eins in Tests überführbar.
- Sie sind manchmal mehrdeutig.
- Sie sind schneller geschrieben als umgesetzt.
- Sie sind strukturiert.
- Sie auszutesten dauert Minuten.

Um bis zum Quelltext zu kommen, können sie teilweise in Tests umformuliert werden.
Die Tests haben folgende Eigenschaften:

- Sie sind ausführbar.
- Sie sind nicht von Nutzern geschrieben.
- Sie sind eindeutig.
- Sie auszuführen kostet Sekunden.

Die Schul-Cloud hat viele Nutzer aber wenige Entwickler.
Dieses Ungleichgewicht, verbunden mit der Schwierigkeit, Tests zu schreiben,
die eindeutig sind, sorgt dafür, dass Features ausgewählt werden müssen.
Je mehr Features gewünscht sind bei gleicher Entwicklerzahl, desto mehr fallen raus.

Viel Zeit der Entwickler steckt bei der Interpretation der Features und
das Umwandeln in Tests.
Die zentrale These dieses Dokumentes ist es:

**Wenn die Nutzer den Entwicklern durch das Formulieren von Tests entgegenkommen,
  dann entstehen mehr Features.**

[Martin Fowler][fowler-1] schreibt dazu:

> This isn't to say that there's no benefit in a business-writable DSL.
> Indeed a couple of years ago some colleagues of mine built a system that included just that,
> and it was much appreciated by the business.
> It's just that the effort in creating a decent editing environment, meaningful error messages,
> debugging and testing tools raises the cost significantly.

Kurz: Eine Sprache, eine Umgebung, Fehlernachrichten und Fehlerfinden zu erschaffen, ist teuer.
Die Frage ist, was ist wirklich wichtig.

Der Beitragsprozess für die Tests
---------------------------------

In meiner [Masterarbeit][masterarbeit] beschäftige ich mich damit,
wie ich die Einstiegshürden in die Entwicklung der Schul-Cloud senken kann.
Dabei stelle ich fest, dass viele Programmier-Hürden eigentlich Kommunikationshürden sind.
Hier möchte ich die Tests aus zwei Perspektiven beleuchten:

1. Als Kommunikationsinstrument  
    Die Tests eignen sich zum Lesen.
    Dadurch eignen sie sich auch, um darüber zu Sprechen.
    Wir können verschiedene, bestenfalls offene Kommunikationskanäle verwenden und über die Tests reden.
    Diese gibt es vielleicht schon, sind der Online-Kurs, Mailinglisten, Treffen und mehr.
    Zusätzlich kommt noch hinzu, dass die Plattform GitHub Issues bereit stellt, in denen über
    die Tests, die Imlplementierung und das Formulieren der Tests gesprochen werden kann. 
2. Als Anlernmöglichkeit zum Beitragen  
    Wenn Nutzer ihre eigenen User-Stories schreiben können, können sie
    - andere anlernen
    - sich gegenseitig helfen
    - den Entwicklern Arbeit abnehmen
    - mit den Entwicklern auf verschiedenen Ebenen reden
    Die Frage ist, was wird benötigt, um einen solchen Austauschprozess zwischen Nutzern und Entwicklern zu erzeugen.

Gestaltung des Betragsprozesses
-------------------------------

Damit ich den Beitragsprozess optimal gestalten kann, würde ich gerne mit mindestens drei Lehrern darüber reden,
wie sie den Prozess gerne durchlaufen würden.
Fragen sind folgende:

- Wie viel von der Interaktion soll auf Github stattfinden?
- Welche Kommunikationskanäle benutzen sie bereits, um sich mit anderen über Features auszutauschen.
- Welche Hilfen brauchen sie beim Formulieren der Tests?
- Wie sollte das Feedback über die neuen Tests aussehen? (Syntax und Ausführung)

Solche und ähnliche Fragen möchte ich mit den Lehrern besprechen.
Ziel ist es, den Einstieg für die zu erleichtern, die auf diese Weise zur Schul-Cloud beitragen wollen.
Vielleicht ermöglicht das auch, einen Einstieg in die Programmierung - sein eigenes Feature umzusetzen macht
am meisten Spaß.

Aussicht
--------

Ich brauche drei Lehrer, die es interessiert, mit mir über den Beitragsprozess zu reden.

[gherkin]: https://github.com/cucumber/cucumber/wiki/Gherkin
[fowler-1]: https://martinfowler.com/bliki/BusinessReadableDSL.html
[masterarbeit]: https://gitlab.quelltext.eu/niccokunzmann/masterarbeit/
