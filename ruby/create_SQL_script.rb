#!/usr/bin/env ruby
targetFilename='sql/stolperstein.sql'
sourceFilenameArray = [
    'sql/cleanup.sql',
    'sql/create.sql',
    'sql/insert_stadtbezirk_name.sql',
    'sql/insert_opfer.sql',
    'sql/insert_stolperstein.sql'
    ]

File.open(targetFilename, 'w') do |target|
    sourceFilenameArray.each do |sourceFileName|
        File.open(sourceFileName, 'r') do |source|
            target.puts source.readlines
        end
    end
end
