#!/usr/bin/env ruby
require 'sqlite3'
require 'json'

targetFilename='page/stolperstein.json'

query =
    'SELECT     lon,'                           + "\n" +
    '           lat,'                           + "\n" +
    '           Geborene,'                      + "\n" +
    '           Jahrgang,'                      + "\n" +
    '           Vorname,'                       + "\n" +
    '           Familienname,'                  + "\n" +
    '           Ortsbeschreibung,'              + "\n" +
    '           Bezirksname,'                   + "\n" +
    '           Verlegejahr'                    + "\n" +
    'FROM       TOpfer          NATURAL JOIN'   + "\n" +
    '           TStolperstein   NATURAL JOIN'   + "\n" +
    '           TStadtbezirk'                   + "\n" +
    'ORDER BY   Familienname,'                  + "\n" +
    '           Vorname'

def feature(row)
    lon, lat, geborene, jg, vorname, familienname, ort, bezirk, jahr = row
    result =
        {
            'type'          => 'Feature',
            'geometry'      => {
                'type'          => 'Point',
                'coordinates'   => [lon, lat]
                },
            'properties'    => {
                'ort'           => ort + ', ' +bezirk,
                'vorname'       => vorname,
                'familienname'  => familienname,
                'verlegejahr'   => jahr
                }
            }
    unless geborene.nil?
        result['properties']['geborene'] = geborene
    end
    unless jg.nil?
        result['properties']['jahrgang'] = jg
    end
    result
end

db = SQLite3::Database.new("stolperstein.sqlite3")
features = []
db.execute(query) do |row|
    features.push(feature(row))
end

File.open(targetFilename, 'w') do |target|
    target.puts({
        'type'      => 'FeatureCollection',
        'features'  =>  features
        }.to_json)
end
