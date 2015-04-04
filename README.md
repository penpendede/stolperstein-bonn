# stolperstein-bonn

In Bonn sind bislang (Stand 12/2014) 275 Stolpersteine verlegt worden, die an
Opfer der NS-Gräuel erinnern sollen. Die Absicht dieses Projekts besteht darin,
die Bonner Stolpersteine in einem möglichst offenen Format digital
aufzubereiten. Auf diese Weise sollen die Schicksale, für die diese
Stolpersteine stehen, auch in der der virtuellen Datenwelt präsent werden.

In einem ersten Schritt sind SQL-Skripte entstanden, die eine SQLite3-Datenbank
mit den Stolpersteinen befüllen können.

Der Code einer Internetseite, die diese Stolpersteine mit Hilfe von Leaflet auf
einer Karte von Bonn anzeigt, nun ebenfalls fertig.

Die angezeigten Marker werden jetzt automatisch aus der Datenbasis erzeugt und
Informationen werden nach Anklicken des Markers in einem Popup-Fenster
angezeigt:

![Screenshot](files/screenshot.png)

Das Repository enthält zudem eine fertige SQLite3-Datenbank mit den bislang
erfassten Stolperstein-Daten.
