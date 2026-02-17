require 'digest'
puts Digest::SHA1.file(File.join("myfile.txt"))
