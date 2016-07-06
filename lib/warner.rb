class Warner

  def self.track_files
    @tracked_files = Dir['**/*'].reject{|file| File.directory?(file)}
  end

  def self.check_apikey
    @suspicious_files = @tracked_files.select{|file_path| File.readlines(file_path).grep(/[0-9a-zA-Z+\/]{28,}?/.any?}
  end

  def warning_message
    return "Warning! There seems to be a string similar to an API key in one of your files!" if @suspicious_files.any?
    "There does not seem to be anything similar to an API in your files, carry on!"
  end
end
