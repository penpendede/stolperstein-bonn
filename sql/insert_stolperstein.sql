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
