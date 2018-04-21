module BuildConvertedVideoFilenameBase
  module_function

  def call(video_metadata)
    raise 'Metadata record must be persisted' unless video_metadata.persisted?

    "#{video_metadata.id}-#{video_metadata.upload_date.strftime('%m%d%Y')}-#{sanitize_filename(video_metadata.title)}"
  end

  # https://stackoverflow.com/questions/1939333/how-to-make-a-ruby-string-safe-for-a-filesystem
  def sanitize_filename(filename)
    filename.strip do |name|
      # NOTE: File.basename doesn't work right with Windows paths on Unix
      # get only the filename, not the whole path
      name.gsub!(/^.*(\\|\/)/, '')

      # Strip out the non-ascii character
      name.gsub!(/[^0-9A-Za-z.\-]/, '_')
    end
  end
end