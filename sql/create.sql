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
    BezirksID   INTEGER PRIMARY KEY AUTOINCREMENT,
    Bezirksname VARCHAR(40) NOT NULL
);

-- Vorname und Familienname des Opfers, ggf. Familienname bei Geburt

CREATE TABLE TOpfer (
    OpferID         INTEGER PRIMARY KEY AUTOINCREMENT,
    Vorname         VARCHAR(40) NOT NULL,
    Familienname    VARCHAR(40) NOT NULL,
    Jahrgang        VARCHAR(11),
    Geborene        VARCHAR(40)
);

-- Die Stolpersteine

CREATE TABLE TStolperstein (
    StolpersteinID      INTEGER PRIMARY KEY AUTOINCREMENT,
    lon                 FLOAT NOT NULL,
    lat                 FLOAT NOT NULL,
    Ortsbeschreibung    VARCHAR(100),
    Verlegejahr         INTEGER,
    OpferID             INTEGER UNSIGNED NOT NULL,
    BezirksID           INTEGER UNSIGNED NOT NULL,

    CONSTRAINT fk_OpferID   FOREIGN KEY (OpferID)   REFERENCES TOpfer(OpferID),
    CONSTRAINT fk_BezirksID FOREIGN KEY (BezirksID) REFERENCES TStadtbezirk(BezirksID)
);
