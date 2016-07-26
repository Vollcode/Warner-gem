require "ptools"

class Warner

  def self.track_files
    tracked_files = Dir['**/*'].reject{|file| File.directory?(file)}
    nonbinary_files = tracked_files.select{|file| !File.binary?(file)}
  end

  def self.check_apikey
    tracked_files = self.track_files
    suspicious_files = tracked_files.select{|file_path| File.readlines(file_path).grep(/[0-9a-zA-Z+\/]{28,}/).any?}
      if suspicious_files.any? then puts "Warning! There seems to be a string similar to an API key in one of your files!"
      else puts "There does not seem to be anything similar to an API key in your files, carry on!"
      end
  end
end
