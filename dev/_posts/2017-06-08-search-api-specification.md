---
layout: blog-post
title: Spezifikation, Test und Implementierung der Such-API
language: de
author:
- niccokunzmann
---

Dies ist ein Entwurf, wie die Such-API getestet werden soll.
Das Umfasst den Prozess von der Spezifikation bis zum laufenden Dienst.

<!-- more -->

{% assign images = "/assets/img/search-architecture" %}

## Überblick

Die Suchdienste sind ein Teil der Schul-Cloud APIs.
Diese wurde in [der Architekturvorstellung][arch] besprochen.

Dieses Bild Zeigt, wie die Such-Webseite das Such-Interface anfragt.
Die dahinter liegende Suchmaschine fragt dann z.B. eine Wikipedia-Suchmaschine an.
Diese fragt bei Wikipedia nach Daten und wandelt die Daten in das Metadatenformat um.

![]({{ images }}/search-architecture.svg)


## Die Spezifikation

Die Spezifikation ist in der [Search API][search-api] festgeschrieben.
Diese gilt für alle Such-Dienste, damit diese das Frontend wiederverwenden können
und problemlos als Suchmaschinen kombiniert werden können.

## Nutzung der Tests in der Entwicklung

Die Tests sind eine Automatisierung und ausführliche Formulierung der API.
Sie können vielseitig eingesetzt werden.
Dieses Bild zeigt die Benutzung der API-Tests, beispielsweise in den Tests
der Suchmaschine.

![]({{ images }}/test-architecture.svg)

Die API-Tests stellen sicher, dass die API eingehalten wird.
Die Content-Tests stellen sicher, dass die Suche richtig funktioniert.

Ein Beispiel: 

1. Suchen die Content-Tests den Begriff "Einstein", so stellen die API-Tests sicher, dass die Anfrage richtig formatiert ist.
2. Dann wird die Anfrage weitergeschickt.
3. Was zurück kommt, testen die API-Tests auf Form und teilweise auf Funktion:
  - Wird erfolgreich auf die nächsten Suchergebnisse verwiesen?
  - Ist es eine Liste von validen Metadaten?
4. Die Content-Test testen dann, ob auch die Ergebnisse ankommen, die angefragt wurden.

## Tests im Live-System

Die API-Tests haben das selbe Interface wie die Suchmaschine selbst.
Dadurch können Tests und Suchmaschnine hintereinander gesetzt werden,
um im Live-Betrieb zu testen, ob alle Kommunikation zur API konform ist.
Dadurch lassen sich Fehler im laufenden System leichter finden.
Das ist vielleicht auch dann sinnvoll, wenn man schonmal eine Suche anbinden möchte,
bei der man nicht ganz darauf vertraut, dass sie stabile API-Kompatibilität aufweist.
Man kann sich sicher sein: Was durch die Tests läuft, ist kompatibel.

![]({{ images }}/search-architecture-with-tests.svg)

## Zusammenfassung

Die API, die Tests und die Services bilden eine Formulierungseinheit:

- Was soll geschehen? API, API-Tests
- Wie soll es geschehen? Services

Diese Trennug ist möglich. Sie erlaubt auch die Wiederverwendung der Tests für
verschiedene Suchmaschinen.




[arch]: /blog/2017-04-24/extensible-content-delivery
[search-api]: https://github.com/schul-cloud/resources-api-v1#search-api
