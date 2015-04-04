-- +---------------------------------------------------------------------------
-- |
-- |                               O B A C H T !
-- |
-- +---------------------------------------------------------------------------
-- |
-- | Die folgenden Zeilen enthalten DROP-TABLE-Anweisungen, die Daten löschen!
-- |
-- | Vorhandene Tabellen löschen. Während der Entwicklung ist die Struktur der
-- | Datenbank noch im Fluss und es muss gewährleistet sein, dass die Tabellen
-- | die korrekte Struktur aufweisen.
-- |
-- +---------------------------------------------------------------------------

DROP TABLE IF EXISTS TStolperstein;
DROP TABLE IF EXISTS TOpfer;
DROP TABLE IF EXISTS TStadtbezirk;
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
-- +---------------------------------------------------------------------------
-- |
-- | Die folgenden Zeilen erzeugen die Liste der Stadtbezirke
-- |
-- +---------------------------------------------------------------------------

INSERT INTO TStadtbezirk (Bezirksname) VALUES ('Bonn');
INSERT INTO TStadtbezirk (Bezirksname) VALUES ('Hardtberg');
INSERT INTO TStadtbezirk (Bezirksname) VALUES ('Bad Godesberg');
INSERT INTO TStadtbezirk (Bezirksname) VALUES ('Beuel');
-- +---------------------------------------------------------------------------
-- |
-- | Die folgenden Zeilen erzeugen die Namen und Jahrgänge der Opfer
-- |
-- +---------------------------------------------------------------------------

-- +---------------------------------------------------------------------------
-- | Dummyeintrag für Opfer, die in der Liste der Gedenkstätte fehlen
-- +---------------------------------------------------------------------------

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'n.n.',
    'n.n.',
    0,
    'n.n.'
);

-- +---------------------------------------------------------------------------
-- | Stadtbezirk Bonn
-- +---------------------------------------------------------------------------

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Jenny',
    'Apfel',
    1864,
    'Sommer'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julius',
    'Apfel',
    1888
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Irma',
    'Apfel',
    1903,
    'Levy'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ursula',
    'Apfel',
    1929
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Mirjam',
    'Apfel',
    1942
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Minna',
    'Apfel',
    1886,
    'Laubheim'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegmund',
    'Apfel',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Martha',
    'Appel',
    1895
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Henriette',
    'Appel',
    1866
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bernhard',
    'Arensberg',
    1865
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
                      Geborene
) VALUES (
    'Ida',
    'Arensberg',
    1870,
    'Benjamin'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Arensberg',
    1868
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Isaak',
    'Arensberg',
    1871
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sara',
    'Arensberg',
    1876
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Leopold',
    'Arensberg',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Marta',
    'Arensberg',
    1896
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Philipp',
    'Bucki',
    1885
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Alwine',
    'Bucki',
    1888,
    'De Leve'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Egon',
    'Bucki',
    1928
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Cäsar',
    'Bukofzer',
    1886
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Julie',
    'Bukofzer',
    1878,
    'Menken'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Leopold',
    'Cossmann',
    1863
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Walter',
    'Cossmann',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Nathan',
    'Daniel',
    1858
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Philippine',
    'Daniel',
    1877,
    'Lion'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Jakob',
    'Daniel',
    1893
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Selma',
    'Daniel',
    1895,
    'Leven'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ruth',
    'Daniel',
    1927
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Emma',
    'Dornbusch',
    1870,
    'Herz'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Simon',
    'Dornbusch',
    1870
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegmund',
    'Fauerbach',
    1858
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Dorothea',
    'Fauerbach',
    1905
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Elisabeth',
    'Fauerbach',
    1891
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Helene',
    'Fauerbach',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hans Peter',
    'Fauerbach',
    1929
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Josef',
    'Faust',
    1933
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Anna',
    'Getreider',
    1890,
    'Klaber'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Heinz',
    'Getreider',
    1927
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Paul',
    'Getreider',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Emmy',
    'Goldschmidt',
    1877,
    'Herschel'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Henriette',
    'Goldschmidt',
    1870,
    'Abraham'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Emil',
    'Goldschmidt',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Hanau',
    1878
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Anna',
    'Hanau',
    1887,
    'Jakoby'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ernst',
    'Gottschalk',
    1906
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Frieda',
    'Gottschalk',
    1908,
    'Frenkel'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Felix',
    'Hausdorff',
    1868
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Charlotte',
    'Hausdorff',
    1873,
    'Goldschmidt'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Adele',
    'Heimann',
    1886
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sophie',
    'Heimann',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Dr. Ernst',
    'Herrmanns',
    1874
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Toni',
    'Herrmanns',
    1874
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Elisabeth',
    'Herrmanns',
    1910
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Robert',
    'Herz',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Wilhelmine',
    'Herz',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bertha',
    'Herz',
    1871
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegmund',
    'Herz',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Else',
    'Herz',
    1901,
    'Arensberg'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Emma',
    'Heumann',
    1890,
    'Kahn'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Regina',
    'Heymann',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hermann',
    'Hirsch',
    1876
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Ida',
    'Hirsch',
    1873,
    'Sollinger'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Klara',
    'Juda',
    1888,
    'Stern'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Paula',
    'Jonas',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Robert',
    'Kahn',
    1891
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Nettchen',
    'Kahn',
    1901,
    'Schwarz'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Edith',
    'Kahn',
    1929
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Heinrich',
    'Körner',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Johanna',
    'Katzky',
    1883,
    'Hirschfeld'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Adele',
    'Kussel',
    1899,
    'Arensberg'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ludwig',
    'Kussel',
    1905
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Anna',
    'Landsberg',
    1878,
    'Silverberg'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Paul Ludwig',
    'Landsberg',
    1901
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Else',
    'Langstein',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Helene',
    'Langstein',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ruth',
    'Langstein',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Walter',
    'Langstein',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Anna',
    'Levy',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Erich',
    'Levy',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hertha',
    'Levy',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ingrid',
    'Levy',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Salomon',
    'Levy',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Dora',
    'Loeb',
    1905
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Gertrud',
    'Loeb',
    1903
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bernhard',
    'Loew',
    1886
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Hermine',
    'Loew',
    1893,
    'Weil'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Clara',
    'Löwenstein',
    1893
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Frieda',
    'Maier',
    1889,
    'Pohly'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Berta',
    'Mamlock',
    1883,
    'Samuel'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Louis',
    'Mamlock',
    1878
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Elisabeth',
    'Marx',
    1874,
    'Jonas'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Erich',
    'Marx',
    1901
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Rosa',
    'Marx',
    1907,
    'Wolf'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Henriette',
    'Marx',
    1878,
    'Goldschmidt'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bernhard',
    'Marx',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Erna',
    'Marx',
    1899,
    'Hartmann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Helena',
    'Marx',
    1927
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julie',
    'Marx',
    1936
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hermann',
    'Marx',
    1870
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Helene',
    'Marx',
    1879,
    'Fleck'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Jakob',
    'Marx',
    1867
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegmund',
    'Mayer',
    1883
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Paula',
    'Mendel',
    1863,
    'Voss'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Eva',
    'Merkelbach',
    1874,
    'Sürth'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Erna',
    'Müller',
    1873,
    'Kohlmann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Anna',
    'Meyer',
    1872,
    'Simonsfeld'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hertha',
    'Meyer',
   null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Jakob',
    'Meyer',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sarah',
    'Meyer',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Elise',
    'Nussbaum',
    null,
    'Kahn'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Amalie',
    'Oppenheimer',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Rosa',
    'Oppenheimer',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegmund',
    'Oppenheimer',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Wilhelmine',
    'Overbeck',
    null,
    'De Leve'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Edith',
    'Pappenheim',
    1883,
    'Goldschmidt'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Otto',
    'Renois',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Paula',
    'Rhée',
    1869
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Helene',
    'Rosenbaum',
    1892
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Gertrud',
    'Rosenbaum',
    1896
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Rosenberg',
    1866
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Johanna',
    'Rosenberg',
    1866,
    'Neumann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Hedwig',
    'Rosenstock',
    1895,
    'Nussbaum'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Jacob',
    'Rülf',
    1868
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Simon',
    'Sajonz',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Perla',
    'Sajonz',
    1886,
    'Maymann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Michael',
    'Sajonz',
    1923
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bruno',
    'Schmitz',
    1920
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Wilhelm',
    'Schmitz',
    1872
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Berta',
    'Schönbaum',
    1865,
    'Veith'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Felix',
    'Simons',
    1874
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sybilla',
    'Sommer',
    1862
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Walter',
    'Sommer',
    1902
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Sommer',
    1895
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Lilli',
    'Sommer',
    1901,
    'Cossmann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bernhard',
    'Strauß',
    1860
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Erna',
    'Strauß',
    1915
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Rosa',
    'Strauß',
    1882,
    'Levy'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Franz',
    'Virnich',
    1882
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karola',
    'Waldmann',
    1911
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hedwig',
    'Walzel',
    1878
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julia',
    'Weidenbaum',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Leopold',
    'Weidenbaum',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Irmgard',
    'Winterberg',
    1904,
    'Lewinski'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Siegfried',
    'Winterberg',
    1900
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Dr. Hans',
    'Wollstein',
    1895
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Amalie',
    'Wolff',
    1870,
    'Scheuer'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Wolff',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Lina',
    'Wolff',
    1904,
    'Levy'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Arno',
    'Wolff',
    1928
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Maria',
    'Zuntz',
    1872,
    'Cohen'
);

-- +---------------------------------------------------------------------------
-- | Stadtbezirk Hardtberg
-- +---------------------------------------------------------------------------

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Alfred',
    'Israel',
    1925
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Eva',
    'Israel',
    1888,
    'Israel'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sally',
    'Israel',
    1890
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Wilhelmine',
    'Israel',
    1922
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Wilhelmine',
    'Salomon',
    1871
);


-- +---------------------------------------------------------------------------
-- | Stadtbezirk Bad Godesberg
-- +---------------------------------------------------------------------------

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Rosalie',
    'Adler',
    1888,
    'Friesem'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ruth',
    'Adler',
    1915
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sara',
    'Auerbach',
    1871
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ida',
    'Baer',
    1876
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hugo',
    'Cahn',
    1906
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Edith',
    'Cahn',
    1914,
    'Scheidemann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Salo',
    'Cahn',
    1940
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Paula',
    'Dammann',
    1879,
    'Raphael'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ernst',
    'Daniel',
    1901
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Elli',
    'Daniel',
    1894
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Jeanette',
    'Daniel',
    1860,
    'Behr'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Frieda',
    'Daniel',
    1887
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Josef',
    'Daniel',
    1894
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Raphael',
    'Frenkel',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Bertha',
    'Frenkel',
    1873,
    'Drücker'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Erna',
    'Frenkel',
    1911
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Isidor',
    'Frenkel',
    1901
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Erna',
    'Frenkel',
    1908,
    'Brünell'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ralf',
    'Frenkel',
    1936
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Friedrich',
    'Heidenheim',
    1878
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Helene',
    'Heidenheim',
    1886,
    'Stern'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ellen',
    'Heidenheim',
    1920
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Denny',
    'Heidenheim',
    1942
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Mathilde',
    'Henle',
    1876
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Max',
    'Isaak',
    1876
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Sara',
    'Isaak',
    1874,
    'Wolff'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Lina',
    'Israel',
    1878,
    'Kaufmann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Else',
    'Jacobs',
    1884,
    'Cahner'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Betty',
    'Jülich',
    1891,
    'Winterfeld'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karoline',
    'Kaczka',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Albert',
    'Kahn',
    1888
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Eva',
    'Kahn',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Thea',
    'Kahn',
    1921
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hermann',
    'Kaufmann',
    1870
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Mathilde',
    'Kaufmann',
    1870,
    'Jülich'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Johanna',
    'Klee',
    1899,
    'Kaufmann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Maximilian',
    'Klee',
    1894
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Josef',
    'Levy',
    1883
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Ernestine',
    'Levy',
    1883,
    'Schlohs'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Levy',
    1919
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Rosa',
    'Levy',
    1875
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Adele',
    'Levy',
    1865,
    'Sander'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ella Maria',
    'Michaelis',
    1886
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Paula',
    'Nachmann',
    1906,
    'Isaak'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Rosa',
    'Rosenthal',
    1869,
    'Goldberg'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Joseph',
    'Roth',
    1896
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Jetta',
    'Sommer',
    1866,
    'Sondheimer'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Sally',
    'Spiegel',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Johanna',
    'Spiegel',
    1866
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Wilhelm',
    'Weil',
    1878
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Jenny',
    'Weil',
    1899
);

-- +---------------------------------------------------------------------------
-- | Stadtbezirk Beuel
-- +---------------------------------------------------------------------------

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Leopold',
    'Aron',
    1879
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Johanna',
    'Aron',
    1889,
    'Meier'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Edith',
    'Boers',
    1906,
    'Herz'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Günter',
    'Boers',
    1925
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Bertha',
    'Cahn',
    1874,
    'Forst'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Hermann',
    'Drong',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Scheva',
    'Drong',
    1889,
    'Moschkowiatsch'
);

-- FIXME: Extrem fragwürdige Angabe des Jahrgangs (1820), zum Zeitpunkt
-- der Abschiebung wäre er ca. 118 gewesen
INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Samuel',
    'Drong',
    null
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Isaak',
    'Frank',
    1860
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Erna',
    'Frank',
    1906
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karola',
    'Frank',
    1919
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Max',
    'Frank',
    1889
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Elsa',
    'Frank',
    1899,
    'Salm'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Regina',
    'Grüneberg',
    1859,
    'Levy'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Alex',
    'Herz',
    1893
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Frieda',
    'Herz',
    1922
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Günther',
    'Herz',
    1827
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Helene',
    'Herz',
    1880,
    'Sanders'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Ella',
    'Herz',
    1867,
    'Neumann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Alfred',
    'Herz',
    1896
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Luzie',
    'Herz',
    1900,
    'Wolff'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ingeborg',
    'Herz',
    1927
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Max',
    'Herz',
    1894
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Edith',
    'Herz',
    1893 ,
    'Goldreich'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ruth',
    'Herz',
    1925
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Moses',
    'Herz',
    1863
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Franziska',
    'Heumann',
    1875,
    'Strauß'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Samuel',
    'Heumann',
    1887
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Amalie',
    'Heumann',
    1881
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Frieda',
    'Heumann',
    1884
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julius',
    'Hirsch',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Else',
    'Hirsch',
    1893,
    'Appel'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Günter',
    'Hirsch',
    1942
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Sofie',
    'Israel',
    1861,
    'Horn'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Bertha',
    'Kahn',
    1899
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Heinz',
    'Kahn',
    1929
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Kurt',
    'Kahn',
    1930
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ernst',
    'Kahn',
    1932
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ludwig',
    'Kaufmann',
    1896
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Erna',
    'Kaufmann',
    1903,
    'Oster'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Ruth',
    'Kaufmann',
    1937
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Karl',
    'Kaufmann',
    1894
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Simon',
    'Kaufmann',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Selma',
    'Kaufmann',
    1879,
    'Stein'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Lotte',
    'Klein',
    1923
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Walter',
    'Klein',
    1898
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julius Erwin',
    'Kober',
    1887
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Emilie',
    'Kober',
    1891,
    'Levy'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Paul',
    'Langen',
    1893
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Albert',
    'Lehmann',
    1907
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Samuel',
    'Levy',
    1877
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Henny',
    'Levy',
    1881,
    'Silberschmidt'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julia',
    'Levy',
    1883
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Alice',
    'Marx',
    1910
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Max',
    'Marx',
    1906
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Josef',
    'Messinger',
    1907
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Johanna',
    'Rosenthal',
    1897
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Therese',
    'Rosenthal',
    1880
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Helene',
    'Sommer',
    1877
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Henriette',
    'Sommer',
    1873
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Seligmann',
    'Sommer',
    1872
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Nathan',
    'Scheuer',
    1877
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Moritz',
    'Schubach',
    1879
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Rosa',
    'Schubach',
    1892,
    'Wolf'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Edith',
    'Sternschein',
    1908,
    'Schubach'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Lambert',
    'Weidenbaum',
    1857
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang,
    Geborene
) VALUES (
    'Luise',
    'Weidenbaum',
    1856,
    'Baumann'
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Julie',
    'Weidenbaum',
    1890
);

INSERT INTO TOpfer (
    Vorname,
    Familienname,
    Jahrgang
) VALUES (
    'Martha',
    'Weidenbaum',
    1896
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.71641,
    7.16124,
    'Königswinterer Straße 587',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sofie'
        AND    Familienname='Israel'
        AND    Geborene='Horn'
        AND    Jahrgang=1861
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385098,
    7.11995,
    'Siegfried-Leopold-Straße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Alex'
        AND    Familienname='Herz'
        AND    Jahrgang=1893
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385103,
    7.1199522,
    'Siegfried-Leopold-Straße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Herz'
        AND    Geborene='Sanders'
        AND    Jahrgang=1880
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385082,
    7.1199501,
    'Siegfried-Leopold-Straße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Günther'
        AND    Familienname='Herz'
        AND    Jahrgang=1827
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385086,
    7.1199525,
    'Siegfried-Leopold-Straße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Frieda'
        AND    Familienname='Herz'
        AND    Jahrgang=1922
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.738629,
    7.1174067,
    'Friedrich-Breuer-Straße / Gottfried-Claren-Straße',
    '2002 / 2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ruth'
        AND    Familienname='Kaufmann'
        AND    Jahrgang=1937
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.73863,
    7.1174091,
    'Friedrich-Breuer-Straße / Gottfried-Claren-Straße',
    '2002 / 2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Kaufmann'
        AND    Geborene='Oster'
        AND    Jahrgang=1903
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7386325,
    7.1174067,
    'Friedrich-Breuer-Straße / Gottfried-Claren-Straße',
    '2002 / 2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Kaufmann'
        AND    Jahrgang=1894
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7386336,
    7.1174087,
    'Friedrich-Breuer-Straße / Gottfried-Claren-Straße',
    '2002 / 2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ludwig'
        AND    Familienname='Kaufmann'
        AND    Jahrgang=1896
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385727,
    7.1167419,
    'Friedrich-Breuer-Straße 25',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Luzie'
        AND    Familienname='Herz'
        AND    Geborene='Wolff'
        AND    Jahrgang=1900
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385673,
    7.1167421,
    'Friedrich-Breuer-Straße 25',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ingeborg'
        AND    Familienname='Herz'
        AND    Jahrgang=1927
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385646,
    7.1167357,
    'Friedrich-Breuer-Straße 25',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ella'
        AND    Familienname='Herz'
        AND    Geborene='Neumann'
        AND    Jahrgang=1867
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385707,
    7.116734,
    'Friedrich-Breuer-Straße 25',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Alfred'
        AND    Familienname='Herz'
        AND    Jahrgang=1896
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7382758,
    7.1153051,
    'Friedrich-Breuer-Straße 17',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Isaak'
        AND    Familienname='Frank'
        AND    Jahrgang=1860
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7382771,
    7.1153081,
    'Friedrich-Breuer-Straße 17',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Frank'
        AND    Jahrgang=1906
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7382787,
    7.1153127,
    'Friedrich-Breuer-Straße 17',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karola'
        AND    Familienname='Frank'
        AND    Jahrgang=1919
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7377181,
    7.1166247,
    'Hermannstraße 24',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Simon'
        AND    Familienname='Kaufmann'
        AND    Jahrgang=1873
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7376978,
    7.1166047,
    'Hermannstraße 24',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Selma'
        AND    Familienname='Kaufmann'
        AND    Geborene='Stein'
        AND    Jahrgang=1879
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7378451,
    7.1178691,
    'Gottfried-Claren-Straße 18',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Aron'
        AND    Geborene='Meier'
        AND    Jahrgang=1889
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7378436,
    7.117866,
    'Gottfried-Claren-Straße 18',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Leopold'
        AND    Familienname='Aron'
        AND    Jahrgang=1879
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389051,
    7.1210694,
    'Siegfried-Leopold-Straße 41',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Amalie'
        AND    Familienname='Heumann'
        AND    Jahrgang=1881
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389084,
    7.1210753,
    'Siegfried-Leopold-Straße 41',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Frieda'
        AND    Familienname='Heumann'
        AND    Jahrgang=1884
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389066,
    7.1210721,
    'Siegfried-Leopold-Straße 41',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Samuel'
        AND    Familienname='Heumann'
        AND    Jahrgang=1887
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7388706,
    7.1212226,
    'Siegfried-Leopold-Straße 50',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Henriette'
        AND    Familienname='Sommer'
        AND    Jahrgang=1873
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7388688,
    7.1212192,
    'Siegfried-Leopold-Straße 50',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Sommer'
        AND    Jahrgang=1877
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7388669,
    7.1212163,
    'Siegfried-Leopold-Straße 50',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Seligmann'
        AND    Familienname='Sommer'
        AND    Jahrgang=1872
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7398886,
    7.1251851,
    'Obere Wilhelmstraße 28',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Günter'
        AND    Familienname='Hirsch'
        AND    Jahrgang=1942
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7398857,
    7.1251786,
    'Obere Wilhelmstraße 28',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julius'
        AND    Familienname='Hirsch'
        AND    Jahrgang=1873
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7398872,
    7.1251817,
    'Obere Wilhelmstraße 28',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Else'
        AND    Familienname='Hirsch'
        AND    Geborene='Appel'
        AND    Jahrgang=1893
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7399278,
    7.1248927,
    'Obere Wilhelmstraße 19',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elsa'
        AND    Familienname='Frank'
        AND    Geborene='Salm'
        AND    Jahrgang=1899
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7399299,
    7.1249026,
    'Obere Wilhelmstraße 19',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Max'
        AND    Familienname='Frank'
        AND    Jahrgang=1889
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7406595,
    7.1135321,
    'Rheinaustraße 95',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Max'
        AND    Familienname='Marx'
        AND    Jahrgang=1906
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7406605,
    7.1135339,
    'Rheinaustraße 95',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Franziska'
        AND    Familienname='Heumann'
        AND    Geborene='Strauß'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7405429,
    7.116161,
    'Combahnstraße 24',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Max'
        AND    Familienname='Herz'
        AND    Jahrgang=1894
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7405412,
    7.1161588,
    'Combahnstraße 24',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Herz'
        AND    Geborene='Goldreich'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7406616,
    7.1135357,
    'Rheinaustraße 95',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Alice'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7405444,
    7.116163,
    'Combahnstraße 24',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ruth'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7411575,
    7.1183425,
    'Combahnstraße 45',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Moses'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.736256,
    7.1165793,
    'Marienstraße 21',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Moritz'
        AND    Familienname='Schubach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7362591,
    7.1165851,
    'Marienstraße 21',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Sternschein'
        AND    Geborene='Schubach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7362578,
    7.1165821,
    'Marienstraße 21',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Schubach'
        AND    Geborene='Wolf'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389322,
    7.1240513,
    'Neustraße 6',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julius Erwin'
        AND    Familienname='Kober'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389334,
    7.1240542,
    'Neustraße 6',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Emilie'
        AND    Familienname='Kober'
        AND    Geborene='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.733679,
    7.1166674,
    'Johannesstraße 7',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Albert'
        AND    Familienname='Lehmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7459977,
    7.1321496,
    'Gartenstraße 54',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Walter'
        AND    Familienname='Klein'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.745999,
    7.132152,
    'Gartenstraße 54',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Lotte'
        AND    Familienname='Klein'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.740257,
    7.1279816,
    'Siegburger Straße 4',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Rosenthal'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7402562,
    7.1279793,
    'Siegburger Straße 4',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Therese'
        AND    Familienname='Rosenthal'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7313843,
    7.1373549,
    'Am Finkenberg 1',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Josef'
        AND    Familienname='Messinger'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7112177,
    7.1073986,
    'Mechenstraße 64',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erich'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7112159,
    7.1073951,
    'Mechenstraße 64',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elisabeth'
        AND    Familienname='Marx'
        AND    Geborene='Jonas'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7112194,
    7.1074015,
    'Mechenstraße 64',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Marx'
        AND    Geborene='Wolf'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7173105,
    7.1079617,
    'Hausdorffstraße 61',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Pappenheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7173124,
    7.1079646,
    'Hausdorffstraße 61',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Felix'
        AND    Familienname='Hausdorff'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7173141,
    7.1079679,
    'Hausdorffstraße 61',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Charlotte'
        AND    Familienname='Hausdorff'
        AND    Geborene='Goldschmidt'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7203022,
    7.108858,
    'Reuterstraße 114',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hedwig'
        AND    Familienname='Walzel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7208535,
    7.1076679,
    'Reuterstraße 153',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Heinrich'
        AND    Familienname='Körner'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7220434,
    7.0992491,
    'Reuterstraße 44',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegmund'
        AND    Familienname='Oppenheimer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7220451,
    7.0992522,
    'Reuterstraße 44',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Amalie'
        AND    Familienname='Oppenheimer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7220256,
    7.0992373,
    'Reuterstraße 44',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Oppenheimer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.722505,
    7.0987925,
    'Argelanderstraße 135',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jacob'
        AND    Familienname='Rülf'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7200834,
    7.0919953,
    'Jagdweg 45',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Otto'
        AND    Familienname='Renois'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6594543,
    7.189044,
    'Meckenheimer Straße 30',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ernestine'
        AND    Familienname='Levy'
        AND    Geborene='Schlohs'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6594578,
    7.1890486,
    'Meckenheimer Straße 30',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.661559,
    7.1936488,
    'Siegfriedstraße 13',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6594511,
    7.1890371,
    'Meckenheimer Straße 30',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Josef'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6893474,
    7.1501752,
    'Bonner Straße 74',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Salo'
        AND    Familienname='Cahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6893459,
    7.1501765,
    'Bonner Straße 74',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hugo'
        AND    Familienname='Cahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6893455,
    7.1501746,
    'Bonner Straße 74',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Cahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6893593,
    7.1501593,
    'Bonner Straße 74',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Klee'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6871531,
    7.1525583,
    'Bonner Straße 10',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Albert'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6871521,
    7.152558,
    'Bonner Straße 10',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Thea'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6871524,
    7.1525588,
    'Bonner Straße 10',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Eva'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6893609,
    7.1501579,
    'Bonner Straße 74',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Maximilian'
        AND    Familienname='Klee'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6847081,
    7.1564156,
    'Alte Bahnhofstraße 22',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosalie'
        AND    Familienname='Adler'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6843762,
    7.1556515,
    'Alte Bahnhofstraße 8',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelm'
        AND    Familienname='Weil'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6843743,
    7.155664,
    'Alte Bahnhofstraße 8',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Spiegel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.684373,
    7.1556541,
    'Alte Bahnhofstraße 8',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jenny'
        AND    Familienname='Weil'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6847065,
    7.1564172,
    'Alte Bahnhofstraße 22',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ruth'
        AND    Familienname='Adler'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6856574,
    7.1541174,
    'Oststraße 8',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Mathilde'
        AND    Familienname='Kaufmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6856557,
    7.1541175,
    'Oststraße 8',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hermann'
        AND    Familienname='Kaufmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7377636,
    7.1058355,
    'Brückenauffahrt / Doetschstraße',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Emil'
        AND    Familienname='Goldschmidt'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7357484,
    7.0988051,
    'Sternstraße 60',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Alwine'
        AND    Familienname='Bucki'
        AND    Geborene='De Leve'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7343293,
    7.1019962,
    'Am Hof 22',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Irmgard'
        AND    Familienname='Winterberg'
        AND    Geborene='Lewinski'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7371981,
    7.1026148,
    'Wenzelgasse / Bertha-von-Suttner-Platz',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bruno'
        AND    Familienname='Schmitz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7369195,
    7.1032327,
    'Friedrichstraße 51',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Anna'
        AND    Familienname='Getreider'
        AND    Geborene='Klaber'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7357402,
    7.0987992,
    'Sternstraße 60',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Egon'
        AND    Familienname='Bucki'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7333891,
    7.0946743,
    'Thomas-Mann-Straße 64',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elisabeth'
        AND    Familienname='Herrmanns'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.737203,
    7.1026151,
    'Wenzelgasse / Bertha-von-Suttner-Platz',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelm'
        AND    Familienname='Schmitz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7353491,
    7.0951196,
    'Thomas-Mann-Straße 30',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegmund'
        AND    Familienname='Mayer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7377713,
    7.1058294,
    'Brückenauffahrt / Doetschstraße',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Henriette'
        AND    Familienname='Goldschmidt'
        AND    Geborene='Abraham'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7333942,
    7.0946742,
    'Thomas-Mann-Straße 64',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Toni'
        AND    Familienname='Herrmanns'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7333838,
    7.0946743,
    'Thomas-Mann-Straße 64',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Dr. Ernst'
        AND    Familienname='Herrmanns'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7369241,
    7.1032416,
    'Friedrichstraße 51',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Heinz'
        AND    Familienname='Getreider'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.734326,
    7.1019921,
    'Am Hof 22',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegfried'
        AND    Familienname='Winterberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7369211,
    7.1032369,
    'Friedrichstraße 51',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paul'
        AND    Familienname='Getreider'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.737207,
    7.1026151,
    'Wenzelgasse / Bertha-von-Suttner-Platz',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelmine'
        AND    Familienname='Overbeck'
        AND    Geborene='De Leve'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7357481,
    7.0987998,
    'Sternstraße 60',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Philipp'
        AND    Familienname='Bucki'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7331818,
    7.0901471,
    'Gluckstraße 12',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hedwig'
        AND    Familienname='Rosenstock'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7331776,
    7.0901326,
    'Gluckstraße 12',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Dr. Hans'
        AND    Familienname='Wollstein'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7331881,
    7.0901531,
    'Gluckstraße 12',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Felix'
        AND    Familienname='Simons'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7331847,
    7.0901379,
    'Gluckstraße 12',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elise'
        AND    Familienname='Nussbaum'
        AND    Geborene='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.733195,
    7.0901589,
    'Gluckstraße 12',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Müller'
        AND    Geborene='Kohlmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7348908,
    7.0810381,
    'Immenburgstraße 17',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sara'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7348372,
    7.0809372,
    'Immenburgstraße 17',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7348647,
    7.0809904,
    'Immenburgstraße 17',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Isaak'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7376891,
    7.0958525,
    'Breite Straße 26',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Lina'
        AND    Familienname='Wolff'
        AND    Geborene='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7377124,
    7.0958325,
    'Breite Straße 26',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Wolff'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.737731,
    7.0958521,
    'Breite Straße 26',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Arno'
        AND    Familienname='Wolff'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7331152,
    7.0891558,
    'Mozartstraße 32',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Eva'
        AND    Familienname='Merkelbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.739428,
    7.09465,
    'Wolfstraße 15',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Perla'
        AND    Familienname='Sajonz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7394066,
    7.0947223,
    'Wolfstraße 15',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Michael'
        AND    Familienname='Sajonz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.739414,
    7.0946867,
    'Wolfstraße 15',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Simon'
        AND    Familienname='Sajonz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7303974,
    7.1053161,
    'Lennéstraße 5',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Franz'
        AND    Familienname='Virnich'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7266503,
    7.1062126,
    'Kaiserstraße 93',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Emmy'
        AND    Familienname='Goldschmidt'
        AND    Geborene='Herschel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.723869,
    7.1053046,
    'Lessingstraße 22',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Gertrud'
        AND    Familienname='Loeb'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7238726,
    7.1053181,
    'Lessingstraße 22',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Dora'
        AND    Familienname='Loeb'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7255163,
    7.0982486,
    'Kurfürstenstraße 78',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Strauß'
        AND    Geborene='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7255087,
    7.0982389,
    'Kurfürstenstraße 78',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Strauß'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7255122,
    7.0982439,
    'Kurfürstenstraße 78',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bernhard'
        AND    Familienname='Strauß'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7270838,
    7.0972635,
    'Argelanderstraße 10',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julie'
        AND    Familienname='Bukofzer'
        AND    Geborene='Menken'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7270855,
    7.0972615,
    'Argelanderstraße 10',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Cäsar'
        AND    Familienname='Bukofzer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283674,
    7.0995713,
    'Heinrich-von-Kleist-Straße 37',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Louis'
        AND    Familienname='Mamlock'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283742,
    7.0995927,
    'Heinrich-von-Kleist-Straße 37',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Berta'
        AND    Familienname='Mamlock'
        AND    Geborene='Samuel'
        AND    Jahrgang=1883
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6880483,
    7.1481602,
    'Friesdorfer Straße 92',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paula'
        AND    Familienname='Nachmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6880565,
    7.1481431,
    'Friesdorfer Straße 92',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Max'
        AND    Familienname='Isaak'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6991726,
    7.1316683,
    'Annaberger Straße 74',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Joseph'
        AND    Familienname='Roth'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6922693,
    7.1296299,
    'In der Kumme 119',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ella Maria'
        AND    Familienname='Michaelis'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6880563,
    7.1481602,
    'Friesdorfer Straße 92',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sara'
        AND    Familienname='Isaak'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6909092,
    7.1630493,
    'Denglerstraße 42',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paula'
        AND    Familienname='Dammann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6877976,
    7.1562841,
    'Kolfhausstraße 18',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Heidenheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6911847,
    7.1599095,
    'Viktoriastraße 3',
    '2005',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sara'
        AND    Familienname='Auerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.687797,
    7.1562828,
    'Kolfhausstraße 18',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ellen'
        AND    Familienname='Heidenheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6878001,
    7.1562904,
    'Kolfhausstraße 18',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karoline'
        AND    Familienname='Kaczka'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.687797,
    7.1562841,
    'Kolfhausstraße 18',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Denny'
        AND    Familienname='Heidenheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6877975,
    7.1562827,
    'Kolfhausstraße 18',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Friedrich'
        AND    Familienname='Heidenheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6899085,
    7.15856,
    'Hohenzollernstraße 6',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ida'
        AND    Familienname='Baer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.714555,
    7.0477467,
    'Rochusstraße 211',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Alfred'
        AND    Familienname='Israel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Hardtberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7145545,
    7.0477457,
    'Rochusstraße 211',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sally'
        AND    Familienname='Israel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Hardtberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7145548,
    7.0477463,
    'Rochusstraße 211',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelmine'
        AND    Familienname='Israel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Hardtberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7145547,
    7.047746,
    'Rochusstraße 211',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Eva'
        AND    Familienname='Israel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Hardtberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283175,
    7.0733493,
    'Auf dem Hügel 1 / Wanderslebring',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ursula'
        AND    Familienname='Apfel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283174,
    7.073349,
    'Auf dem Hügel 1/ Wanderslebring',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Mirjam'
        AND    Familienname='Apfel'
        AND    Jahrgang=1942
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283177,
    7.0733496,
    'Auf dem Hügel 1 / Wanderslebring',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jenny'
        AND    Familienname='Apfel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283173,
    7.0733495,
    'Auf dem Hügel 1 / Wanderslebring',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Irma'
        AND    Familienname='Apfel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7283175,
    7.0733499,
    'Auf dem Hügel 1 / Wanderslebring',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julius'
        AND    Familienname='Apfel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7327658,
    7.0984552,
    'Gangolfstraße 7',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Marta'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7327659,
    7.0984554,
    'Gangolfstraße 7',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Leopold'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7327661,
    7.0984557,
    'Gangolfstraße 7',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Adele'
        AND    Familienname='Kussel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.745286,
    7.0953816,
    'Graurheindorfer Straße 83',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karola'
        AND    Familienname='Waldmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7413557,
    7.0976188,
    'Kölnstraße 93',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bernhard'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7413556,
    7.0976191,
    'Kölnstraße 93',
    '2002',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ida'
        AND    Familienname='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7379726,
    7.0946311,
    'Maxstraße 22',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Adele'
        AND    Familienname='Heimann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7379701,
    7.0946353,
    'Maxstraße 22',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sophie'
        AND    Familienname='Heimann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7398215,
    7.1238477,
    'Obere Wilhelmstraße 1',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Henny'
        AND    Familienname='Levy'
        AND    Geborene='Silberschmidt'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7502905,
    7.1261445,
    'Stroofstraße',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Samuel'
        AND    Familienname='Drong'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7390931,
    7.1216358,
    'Siegfried-Leopold-Straße 51',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Lambert'
        AND    Familienname='Weidenbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7398209,
    7.1238459,
    'Obere Wilhelmstraße 1',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Samuel'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7390951,
    7.121641,
    'Siegfried-Leopold-Straße 51',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Martha'
        AND    Familienname='Weidenbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7383953,
    7.1246304,
    'Neustraße 18',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bertha'
        AND    Familienname='Cahn'
        AND    Geborene='Forst'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7502877,
    7.1261364,
    'Stroofstraße',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Scheva'
        AND    Familienname='Drong'
        AND    Geborene='Moschkowiatsch'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7390942,
    7.1216384,
    'Siegfried-Leopold-Straße 51',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julie'
        AND    Familienname='Weidenbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7390963,
    7.1216437,
    'Siegfried-Leopold-Straße 51',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Luise'
        AND    Familienname='Weidenbaum'
        AND    Geborene='Baumann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.750289,
    7.1261405,
    'Stroofstraße',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hermann'
        AND    Familienname='Drong'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7235565,
    7.1035583,
    'Bonner Talweg 88',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelmine'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7235575,
    7.1035593,
    'Bonner Talweg 88',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Robert'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.723559,
    7.1035604,
    'Bonner Talweg 88',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bertha'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7258646,
    7.0710135,
    'Endenicher Straße 347',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Martha'
        AND    Familienname='Appel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.726453,
    7.0717982,
    'Endenicher Straße 290',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Sommer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7264533,
    7.0717985,
    'Endenicher Straße 290',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sybilla'
        AND    Familienname='Sommer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7264535,
    7.0717989,
    'Endenicher Straße 290',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Walter'
        AND    Familienname='Sommer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.723467,
    7.0894718,
    'Clemens-August-Straße 17',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Amalie'
        AND    Familienname='Wolff'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7317019,
    7.0854403,
    'Richard-Wagner-Straße 1',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Rosenbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7317017,
    7.0854401,
    'Richard-Wagner-Straße 1',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Gertrud'
        AND    Familienname='Rosenbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7330154,
    7.0863363,
    'Lisztstraße 11',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Klara'
        AND    Familienname='Juda'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7306179,
    7.0939653,
    'Baumschulallee 26',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hermann'
        AND    Familienname='Hirsch'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7306176,
    7.0939661,
    'Baumschulallee 26',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ida'
        AND    Familienname='Hirsch'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.729466,
    7.0949743,
    'Meckenheimer Allee 110',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Leopold'
        AND    Familienname='Cossmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7294663,
    7.0949742,
    'Meckenheimer Allee 110',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Walter'
        AND    Familienname='Cossmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7294667,
    7.0949742,
    'Meckenheimer Allee 110',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Lilli'
        AND    Familienname='Sommer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7302899,
    7.1004287,
    'Prinz-Albert-Straße 19',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Henriette'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7359403,
    7.0874086,
    'Heerstraße 180',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Simon'
        AND    Familienname='Dornbusch'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7359407,
    7.0874093,
    'Heerstraße 180',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Emma'
        AND    Familienname='Dornbusch'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7362198,
    7.0937383,
    'Bornheimer Straße (12)20 / Franzstraße',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Nathan'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.73622,
    7.0937387,
    'Bornheimer Straße (12)20 / Franzstraße',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Philippine'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7374119,
    7.0931257,
    'Weiherstraße 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Emma'
        AND    Familienname='Heumann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7374611,
    7.0932705,
    'Weiherstraße 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Robert'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7374373,
    7.0931619,
    'Weiherstraße 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Nettchen'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7374491,
    7.0932101,
    'Weiherstraße 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7371136,
    7.0962884,
    'Eingang Breite Straße(8) / Gericht',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paula'
        AND    Familienname='Jonas'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7409254,
    7.0914393,
    'Adolfstraße 84',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Clara'
        AND    Familienname='Löwenstein'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7405875,
    7.091403,
    'Im Krausfeld 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jakob'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7422584,
    7.1796759,
    'Hauptstraße 103',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paul'
        AND    Familienname='Langen'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7382401,
    7.1139193,
    'Rheinaustraße 136',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Regina'
        AND    Familienname='Grüneberg'
        AND    Geborene='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7382676,
    7.1191626,
    'Siegfried-Leopold-Straße 13',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julia'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7105969,
    7.1104153,
    'Burbacher Straße 251',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Julie'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7105958,
    7.1104126,
    'Burbacher Straße 251',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helena'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7105994,
    7.1104217,
    'Burbacher Straße 251',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bernhard'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7105981,
    7.1104179,
    'Burbacher Straße 251',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Marx'
        AND    Geborene='Hartmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7121562,
    7.1272662,
    'Friedrich-Wilhelm-Straße 6',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Anna'
        AND    Familienname='Landsberg'
        AND    Geborene='Silverberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7121546,
    7.1272632,
    'Friedrich-Wilhelm-Straße 6',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paul Ludwig'
        AND    Familienname='Landsberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.726545,
    7.1076416,
    'Johannes-Henry-Straße 17',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paula'
        AND    Familienname='Rhée'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7247309,
    7.0968226,
    'Kurfürstenstraße 33',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elisabeth'
        AND    Familienname='Fauerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7247345,
    7.0968286,
    'Kurfürstenstraße 33',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegmund'
        AND    Familienname='Fauerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7247301,
    7.096821,
    'Kurfürstenstraße 33',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hans Peter'
        AND    Familienname='Fauerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7247322,
    7.0968248,
    'Kurfürstenstraße 33',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Dorothea'
        AND    Familienname='Fauerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7246828,
    7.0969359,
    'Kurfürstenstraße 46',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Paula'
        AND    Familienname='Mendel'
        AND    Geborene='Voss'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7247335,
    7.0968264,
    'Kurfürstenstraße 33',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Fauerbach'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6859747,
    7.15936,
    'Rheinallee 4',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Sally'
        AND    Familienname='Spiegel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6881484,
    7.1642728,
    'Rheinallee 35',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Elli'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6881514,
    7.1642899,
    'Rheinallee 35',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ernst'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6849155,
    7.1618701,
    'Rüngsdorfer Straße 4c',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Rosa'
        AND    Familienname='Rosenthal'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6839888,
    7.1624585,
    'Gerhard-Rohlfs-Straße 24',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Adele'
        AND    Familienname='Levy'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6863613,
    7.1655252,
    'Kronprinzenstraße 16',
    '2009',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Betty'
        AND    Familienname='Jülich'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.710016,
    7.1104453,
    'Burbacher Straße 88',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Rosenberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7100154,
    7.1104453,
    'Burbacher Straße 88',
    '2008',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Rosenberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.682074,
    7.1486897,
    'Burgstraße / Im Äuelchen',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bertha'
        AND    Familienname='Frenkel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6820751,
    7.1486878,
    'Burgstraße / Im Äuelchen',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ralf'
        AND    Familienname='Frenkel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6820751,
    7.148689,
    'Burgstraße / Im Äuelchen',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Isidor'
        AND    Familienname='Frenkel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6820747,
    7.1486885,
    'Burgstraße / Im Äuelchen',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Frenkel'
        AND    Jahrgang=1911
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6820747,
    7.1486896,
    'Burgstraße / Im Äuelchen',
    '2007',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Erna'
        AND    Familienname='Frenkel'
        AND    Jahrgang=1908
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6820744,
    7.1486901,
    'Burgstraße / Im Äuelchen',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Raphael'
        AND    Familienname='Frenkel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373446,
    7.0958374,
    'Breite Straße 17',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegmund'
        AND    Familienname='Herz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373408,
    7.0958372,
    'Breite Straße 17',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Else'
        AND    Familienname='Herz'
        AND    Geborene='Arensberg'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7240186,
    7.0976465,
    'Wilhelm-Levison-Straße 1a',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Anna'
        AND    Familienname='Hanau'
        AND    Geborene='Jakoby'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7240208,
    7.0976492,
    'Wilhelm-Levison-Straße 1a',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Karl'
        AND    Familienname='Hanau'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6879732,
    7.1483761,
    'Friesdorfer Straße 90',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Josef'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6879809,
    7.1483876,
    'Friesdorfer Straße 90',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Frieda'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6841228,
    7.1492729,
    'Winterstraße 12',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Mathilde'
        AND    Familienname='Henle'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6880485,
    7.1481428,
    'Friesdorfer Straße 92',
    '2004',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Lina'
        AND    Familienname='Israel'
        AND    Geborene='Kaufmann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6879769,
    7.1483834,
    'Friesdorfer Straße 90',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jeanette'
        AND    Familienname='Daniel'
        AND    Geborene='Behr'
        AND    Jahrgang=1860
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.736241,
    7.1030597,
    'Brüdergasse 13',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ludwig'
        AND    Familienname='Kussel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7361013,
    7.0944823,
    'Budapester Straße 19',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Minna'
        AND    Familienname='Apfel'
        AND    Geborene='Laubheim'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7360495,
    7.1058864,
    'Rheingasse 11/13',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Regina'
        AND    Familienname='Heymann'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.736101,
    7.0944801,
    'Budapester Straße 19',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Siegmund'
        AND    Familienname='Apfel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7138032,
    7.0457033,
    'Rochusstraße 262 / Am Schickshof',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Wilhelmine'
        AND    Familienname='Salomon'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Hardtberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.724102,
    7.067363,
    'Euskirchener Straße 35',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jakob'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7241018,
    7.0673577,
    'Euskirchener Straße 35',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ruth'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7241012,
    7.0673591,
    'Euskirchener Straße 35',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Selma'
        AND    Familienname='Daniel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.737317,
    7.1321869,
    'Maarstraße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bertha'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373167,
    7.1321929,
    'Maarstraße 23',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Edith'
        AND    Familienname='Boers'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.737316,
    7.1321876,
    'Maarstraße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ernst'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373161,
    7.1321912,
    'Maarstraße 23',
    '2006',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Günter'
        AND    Familienname='Boers'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373165,
    7.1321893,
    'Maarstraße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Heinz'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7373175,
    7.1321886,
    'Maarstraße 23',
    '2003',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Kurt'
        AND    Familienname='Kahn'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7389336,
    7.1138935,
    'Rheinstraße 23',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Nathan'
        AND    Familienname='Scheuer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Beuel'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6839833,
    7.1736167,
    'Rheinstraße 37',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Else'
        AND    Familienname='Jacobs'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.6706607,
    7.1583407,
    'Klosterbergstraße 20',
    '2012',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Jetta'
        AND    Familienname='Sommer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bad Godesberg'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7358344,
    7.0984077,
    'Sternstraße 78 / Kasernenstraße',
    '2013',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Berta'
        AND    Familienname='Schönbaum'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7284011,
    7.094346,
    'Meckenheimer Allee 127',
    '2013',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Frieda'
        AND    Familienname='Maier'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.72374,
    7.1044782,
    'Lessingstraße 13',
    '2013',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Helene'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7237396,
    7.104476,
    'Lessingstraße 13',
    '2013',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hermann'
        AND    Familienname='Marx'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7385245,
    7.0891029,
    'Adolfstraße 43',
    '2013',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Josef'
        AND    Familienname='Faust'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7306612,
    7.0928111,
    'Baumschulallee 33',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Anna'
        AND    Familienname='Meyer'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.731433,
    7.0950424,
    'Meckenheimer Allee 71',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Bernhard'
        AND    Familienname='Loew'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7321157,
    7.0884577,
    'Wittelsbacher Ring 18',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Ernst'
        AND    Familienname='Gottschalk'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7321152,
    7.0884584,
    'Wittelsbacher Ring 18',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Frieda'
        AND    Familienname='Gottschalk'
        AND    Geborene='Frenkel'
        AND    Jahrgang=1908
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7314316,
    7.0950424,
    'Meckenheimer Allee 71',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Hermine'
        AND    Familienname='Loew'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7323635,
    7.0855595,
    'Haydnstraße 45',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Johanna'
        AND    Familienname='Katzky'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7274414,
    7.096731,
    'Argelanderstraße 2a',
    '2014',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Maria'
        AND    Familienname='Zuntz'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);

INSERT INTO TStolperstein (
    lat,
    lon,
    Ortsbeschreibung,
    Verlegejahr,
    OpferID,
    BezirksID
) VALUES (
    50.7258664,
    7.071016,
    'Endenicher Straße 347',
    '2010',
    (
        SELECT OpferID
        FROM   TOpfer
        WHERE  Vorname='Henriette'
        AND    Familienname='Appel'
    ),
    (
        SELECT BezirksID
        FROM   TStadtbezirk
        WHERE  Bezirksname='Bonn'
    )
);
