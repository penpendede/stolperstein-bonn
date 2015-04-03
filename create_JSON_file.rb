#!/usr/bin/env ruby
require 'sqlite3'

targetFilename='page/stolperstein.json'

fields = [
    'lon',
    'lat',
    'Geborene',
    'Jahrgang',
    'Vorname',
    'Familienname',
    'Ortsbeschreibung',
    'Bezirksname',
    ].join(', ')

source = [
    'TOpfer',
    'TStolperstein',
    'TStadtbezirk'
    ].join(' NATURAL JOIN ')

orderby = [
    'Familienname',
    'Vorname'
    ].join(', ')
query = "select #{fields} FROM #{source} ORDER BY #{orderby}"


def feature(row)
    result = [];
    lon, lat, geborene, jahrgang, vorname, familienname, ort, bezirk = row

    result = [
        "\t\t{",
        "\t\t\t\"type\": \"Feature\",",
        "\t\t\t\"geometry\":",
        "\t\t\t{",
        "\t\t\t\t\"type\": \"Point\",",
        "\t\t\t\t\"coordinates\": [#{lon}, #{lat}]",
        "\t\t\t},",
        "\t\t\t\"properties\":",
        "\t\t\t{",
        ]
    unless geborene.nil?
        result.push("\t\t\t\t\"geborene\": \"#{geborene}\",")
    end
    unless jahrgang.nil?
        result.push("\t\t\t\t\"jahrgang\": #{jahrgang},")
    end
    result += [
        "\t\t\t\t\"vorname\": \"#{vorname}\",",
        "\t\t\t\t\"familienname\": \"#{familienname}\",",
        "\t\t\t\t\"ort\": \"#{ort}, #{bezirk}\"",
        "\t\t\t}",
        "\t\t}"
        ]

    result.join("\n");
end

db = SQLite3::Database.new("stolperstein.sqlite3")
features = []
db.execute(query) do |row|
    features.push(feature(row))
end


File.open(targetFilename, 'w') do |target|
    target.puts "{ \"type\": \"FeatureCollection\","
    target.puts "\t\"features\": ["
    target.puts features.join(",\n")
    target.puts "\t]"
    target.puts "}"
end
