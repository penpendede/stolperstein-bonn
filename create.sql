-- +---------------------------------------------------------------------------
-- |
-- | Die folgenden Zeilen erzeugt die Tabellenstruktur für die Stolpersteine.
-- |
-- | Die Daten liegen in Form einer Vielzahl von Einzeltabellen vor um zu
-- | gewährleisten, dass sie auf möglichst viele Weisen ausgewertet werden
-- | können.
-- |
-- | Was wünschenswert wäre aber auf Grundlage der bislang vorliegenden
-- | Rohdaten nicht eindeutig möglich ist, ist eine Zuordnung der Opfer zu
-- | Familien - ein identischer Familienname ist hierfür leider weder
-- | notwendig noch ausreichend.
-- |
-- +---------------------------------------------------------------------------

--  Namen der Bonner Stadtbezirke

CREATE TABLE TStadtbezirk (
    BezirksID   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Bezirksname VARCHAR(40) NOT NULL
);

-- Vorname und Familienname des Opfers, ggf. Familienname bei Geburt

CREATE TABLE TOpfer (
    OpferID         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Vorname         VARCHAR(40) NOT NULL,
    Familienname    VARCHAR(40) NOT NULL,
    Jahrgang        INT,
    Geborene        VARCHAR(40)
);

-- Die Stolpersteine

CREATE TABLE TStolperstein (
    StolpersteinID      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lon                 FLOAT NOT NULL,
    lat                 FLOAT NOT NULL,
    Ortsbeschreibung    VARCHAR(100),
    OpferID             INT UNSIGNED NOT NUll,

    CONSTRAINT fk_OpferID FOREIGN KEY (OpferID) REFERENCES TOpfer(OpferID)
);


-- Diese View enthält die einzelnen Features der JSON-Datei
create view VJSON AS
SELECT concat('{
    "type": "Feature",
    "geometry":
    {
        "type": "Point",
        "coordinates": [', lon, ',', lat, '"]
    },
    "properties":
    {
        "Vorname":      "', vorname, '",
        "Familienname": "', familienname, '",
        "Jahrgang":     ',  jahrgang, '
    }
},') FROM TOpfer NATURAL JOIN TStolperstein ORDER BY Familienname, Vorname;
