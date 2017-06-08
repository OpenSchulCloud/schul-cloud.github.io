---
layout: blog-post
title: Kommunikation für Lerninhalte und Anbieter
language: de
author:
- niccokunzmann
---

Lehrer und Schüler wollen aus der Schul-Cloud direkt auf die Lehrmaterialien
verschiedener Anbieter zugreifen können.
Damit das geht, müssen diese Inhalte angebunden werden.
Dafür müssen die Anbieter und das Schul-Cloud-Team miteinander kommunizieren.
Die verschiedenen Weisen das zu tun, werden hier kurz vorgestellt:
Mailverteiler, Spezifikationen, Blog, Issues, Tests und Code.

<!-- more -->

Viele verschiedenen Content-Anbieter zusammen zu bringen hat eine grundsätzliche
Komplexität.
Ein Projekt mit den verschiedenen Anbietern zusammen zu bringen,
ist also schwierig.
Die hier vorgestellten Kommunikationsebenen sollen dazu dienen,
die Komplexität zu begeifen.


Im Folgenden bezieht sich "wir" auf Schul-Cloud-Team und Content-Anbieter.


## Mailverteiler

Damit wir einen niedrigschwelligen Einstieg in die Kommunikation miteinander
haben, gibt es einen [offenen, archivierten Mailverteiler][mailverteiler].
Das hat folgende Vorteile:

- Entscheidungen und Ideen können transparent besprochen werden. Es stellt sich
  nicht die Frage: "Wer weiß es und wer darf es wissen?" Was an den Verteiler
  geht ist für alle bestimmt.
- Sollten neue Anbieter, Programmierer und Studenten hinzukommen, können diese
  mit- und nachlesen sowie Fragen stellen.

### Hoffnungen und Zweck

Ich verbinde mit dem Mailverteiler die Hoffnung, dass durch direkten Austausch
zwischen den Entwicklern Widersprüche in unseren Systemen aufgedeckt werden
und mit der Teilnahme aller Betroffenen besprochen und gelöst werden können.

Ziel ist es dabei nicht, eine universelle Beschreibung für alle Dienste zu schaffen.
Vielmehr ist das Ziel, die Gemeinsamkeiten herauszuarbeiten.
Diese sind es, die eine gemeinsame Plattform stark machen.


## Spezifikationen

Die [Resources-API][resources-api] ist eine Spezifikation.
Sie umfasst Folgendes:

- Ein Format für Metadaten
- Eine API für eine Metadatenablage
- Eine API für eine Metadatensuche

Solange die API sich im Status "Draft" befindet, kann alles das umgeschrieben werden
und steht zur Diskussion. Den Draft-Status verlässt sie, sobald
das [Projekt der Spezifikation][project] abgeschlossen ist.

### Hoffnungen und Zweck

Meine Hoffnung ist, dass alle Anbieter bei der Spezifikation mitschreiben, 
wieder mit dem Hintergedanken, hier eine kleine, funktionierende Lösung zu schaffen.
Die verschiedenen Perspektiven sollen soweit bindend einfließen, wie sie alle
betreffen und optional sein, soweit sie Nutzen bringen aber nicht immer unterstützt werden.
Eine gemeinsame Beschreibung der verschiedenen Nutzen ermöglicht gemeinsame Begriffe und
eine gemeinsame Sprache.
Eine gemeinsame Sprache hilft, auf Probleme zusammen einzugehen und eine Lösung zu finden,
die größere Akzeptanz besitzt.

## Issues

Die Kommunikation über konkrete Probleme erfolgt über [Issues][issues]. 
Sie sind persistent und können mit Änderungen und anderen Issues auf Github verlinkt werden.
Issues gibt es in jedem [Repository][repos].
Deswegen gilt der Mailverteiler als Verbindung zwischen allen.


### Hoffnungen und Zweck

Ich hoffe, dass durch die Issues und die Möglichkeit, diese zu schließen, 
sich verschiedene Personen der Probleme annehmen können und gemeinsam und
transparent zu einer Lösung besteuern können.

Ein üblicher Workflow sähe so aus, dass eine Idee im Mailverteiler angesprochen wird,
bald Issues daraus erstellt werden und dann Pull-Requests mit Änderungen
zum Schließen der Issues geschrieben werden.

## Blog

Es gibt einen [Entwicklerbog][blog] hier werden Entwurfsentscheidungen abgelegt.
Das ermöglicht, über diese zu reden, sie zu referenzieren, gemeinsam zu schreiben und zu verbessern.
Schul-Cloud-Externe sind eingeladen zu diesem Blog beizutragen.

### Hoffnungen und Zweck

Ich hoffe, dass der Blog oder auch ein anderer von Externen genutzt wird, sobald sie Feedback brauchen.
Das Festschreiben der Ideen ermöglicht eine andere Art der Kommunikation, wie diesen
Post, die eine Mailingliste und Issues nicht ermöglichen.

## Spezifikation, Tests und Code

Die Spezifikation formuliert, was gebraucht wird.  
Die Tests formulieren das selbe in einer genaueren Sprache, Code.  
Die Implementierung hält sich an eine Spezifikation, was durch die Tests geleitet wird.

### Hoffnungen und Zweck

Durch den Trialog über die Entwickler sorgen diese für eine unmissverständliche
Ausformulierung und die Trennung des Was und Wie.

Ich hoffe, dass die Formulierung der API als Tests ermöglicht, diese für viele
Dienste automatisiert nutzbar zu machen.
Bei der Implementierung der Tests und der Dienste wird klar, wo die Spezifikation
Lücken hat.
Diese können in [Issues][issues] Thematisiert und behoben werden.

## Zusammenfassung

Hier werden verschiedene Wege besprochen, die Content-Schnittstellen
als Diskussionsgrundlage zu verwenden.
Es wird gezeigt, wie man zu den Diensten beitragen kann und wie man
am Erstellen der Spezifikation teilnimmt.


[mailverteiler]: https://lists.hpi.uni-potsdam.de/listinfo/schul-cloud-content-dienste-offen
[resources-api]: https://github.com/schul-cloud/resources-api-v1
[project]: https://github.com/schul-cloud/resources-api-v1/projects/1
[issues]: https://github.com/schul-cloud/resources-api-v1/issues
[repos]: https://github.com/schul-cloud/
[blog]: https://schul-cloud.github.io/dev
