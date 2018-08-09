# Provides management of the music sorting process
class MusicTools
  # Sorts a given file into a directory structure from a base directory
  # @param directory [String] the base directory to organise this file under
  # @param file [String] the (full path) and name of the file to organise
  # @return [boolean] if the file was successfully organised.
  # TODO add a feature to inspect changes that would be made.
  def self.sort(directory, file)
    raise(ArgumentError, 'Missing arguments') if directory == '' || file == ''
    raise('Missing file') unless File.exist?(file)
    raise('No such directory') unless
      Dir.exist?(directory)
  end
end
