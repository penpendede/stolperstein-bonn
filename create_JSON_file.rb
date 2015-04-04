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
    '           Bezirksname'                    + "\n" +
    'FROM       TOpfer          NATURAL JOIN'   + "\n" +
    '           TStolperstein   NATURAL JOIN'   + "\n" +
    '           TStadtbezirk'                   + "\n" +
    'ORDER BY   Familienname,'                  + "\n" +
    '           Vorname'

def feature(row)
    lon, lat, geborene, jahrgang, vorname, familienname, ort, bezirk = row
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
                'familienname'  => familienname
                }
            }
    unless geborene.nil?
        result['properties']['geborene'] = geborene
    end
    unless jahrgang.nil?
        result['properties']['jahrgang'] = jahrgang
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
