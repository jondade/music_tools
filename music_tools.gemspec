lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'music_tools/version.rb'

Gem::Specification.new do |s|
  s.name        = 'music_tools'
  s.version     = music_tools::VERSION
  s.date        = '2018-09-02'
  s.summary     = 'Tools for storing and administrating music files'
  s.description = 'A set of tools and libraries to maintain, rename, re-tag '\
                  'music files.'
  s.authors     = ['Jonathan Dade']
  s.email       = 'jonathandade@gmail.com'
  s.files       = Dir.glob(File.join('lib', '*.rb'))
  s.homepage    =
    'http://github.com/jondade/music_tools'
end
