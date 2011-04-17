#!/usr/bin/env ruby

require  'fileutils'

Dir['*.png'].each do |path|
    png = path
    jpg = path.sub('.png', '.jpg')
    next if FileUtils::uptodate?(jpg, [png])
    puts path
	system("convert \"#{png}\" -quality 100 \"#{jpg}\"")
end
