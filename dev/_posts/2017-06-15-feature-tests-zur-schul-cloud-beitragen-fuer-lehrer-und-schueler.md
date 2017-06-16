---
layout: blog-post
title: Featurewünsche zur Schul-Cloud beitragen
language: de
author:
- niccokunzmann
---

Die Schul-Cloud stellt einige Features und Navigationsmöglichkeiten bereit.
Wenn Lehrer und Schüler die Schul-Cloud benutzen, kommen ihnen neue Ideen, 
wie die Oberfläche umgestaltet werden kann.
Hier stellen wir vor, wie Lehrer und Schüler direkt ihre Wünsche formulieren können, 
sodass minimale Zeit vergeht, bis diese zum Test für die Schul-Cloud bereit stehen.

<!-- more -->

Von der User-Story zum Feature
------------------------------

Wenn Schüler oder Lehrer Wünsche für neue Funktionen in der Schul-Cloud haben,
dann können sie diese als User-Story formulieren.

Auf http://tickets.schul.tech gibt es eine Annsammlung von User-Stories.
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
möchte ich im Folgenden einen Kommunikaitonskanal vorstellen.

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
die eindeutig sind, sorgt dafür, dass Features selektiert werden müssen.
Je mehr Features gewünscht sind bei gleicher Entwicklerzahl, desto mehr fallen raus.

Viel Zeit der Entwickler steckt bei der Interpretation der Features und
das Umwandeln in Tests.
Die zentrale These dieses Dokumentes ist es:

**Wenn die Nutzer den Entwicklern durch das Formulieren von Tests entgegenkommen,
  dann entstehen mehr Features.**

[Martin Fowler][fowler-1] schreibt dazu:

> This isn't to say that there's no benefit in a business-writable DSL. Indeed a couple of years ago some colleagues of mine built a system that included just that, and it was much appreciated by the business. It's just that the effort in creating a decent editing environment, meaningful error messages, debugging and testing tools raises the cost significantly.

Kurz: Eine Sprache, eine Umgebung, Fehlernachrichten und Fehlerfinden zu erschaffen, ist teuer.

Der Beitragsprozess für die Tests
---------------------------------

In meiner [Masterarbeit][masterarbeit] beschäftige ich mich damit,
wie ich die Einstiegshürden in die Entwicklung der Schul-Cloud senken kann.
Dabei stelle ich fest, dass viele Programmier-Hürden eigendlich Kommunkataionshürden sind.
Im Folgenden möchte ich die Tests aus zwei Perspektiven beleuchten:

1. Als Kommunikationsinstrument
2. Als Anlernmöglichkeit zum Beitragen



[gherkin]: https://github.com/cucumber/cucumber/wiki/Gherkin
[fowler-1]: https://martinfowler.com/bliki/BusinessReadableDSL.html
[masterarbeit]: https://gitlab.quelltext.eu/niccokunzmann/masterarbeit/
