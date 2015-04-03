#!/usr/bin/env ruby
targetFilename='stolperstein.sql'
sourceFilenameArray = [
    'cleanup.sql',
    'create.sql',
    'insert_stadtbezirk_name.sql',
    'insert_opfer.sql',
    'insert_stolperstein.sql'
    ]

File.open(targetFilename, 'w') do |target|
    sourceFilenameArray.each do |sourceFileName|
        File.open(sourceFileName, 'r') do |source|
            target.puts source.readlines
        end
    end
end
