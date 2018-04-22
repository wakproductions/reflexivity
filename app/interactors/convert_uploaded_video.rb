class ConvertUploadedVideo
  include Verbalize::Action

  input :filename, :output_base_filename

  def call
    build_video480p
    build_video720p

    {
      video480p_path: video480p_path,
      video720p_path: video720p_path,
      video_duration: video_duration,
      video_filesize_480p: video_filesize_480p,
      video_filesize_720p: video_filesize_720p,
    }
  end

  private

  def video480p_path
    @video480p_path ||= File.join(IPFS_FILES_PATH, "#{output_base_filename}_480p.mp4")
  end

  def video720p_path
    @video720p_path ||= File.join(IPFS_FILES_PATH, "#{output_base_filename}_720p.mp4")
  end

  def build_video480p
    # `ffmpeg -i #{video720p_path} -s hd480 -c:v libx264 -crf 23 -c:a aac -strict -2 #{video480p_path}`
    movie.transcode(video480p_path, %w(-s hd480 -c:v libx264 -crf 23 -c:a aac -strict -2)) unless File.exists?(video480p_path)
    raise '480p file failed to build' unless File.exists?(video480p_path)
  end

  def build_video720p
    movie.transcode(video720p_path, %w(-s hd720 -c:v libx264 -crf 23 -c:a aac -strict -2)) unless File.exists?(video720p_path)
    raise '720p file failed to build' unless File.exists?(video720p_path)
  end

  def movie
    @movie ||= FFMPEG::Movie.new(File.join(UPLOADED_FILES_PATH, filename))
  end

  def video_duration
    movie.duration
  end

  def video_filesize_480p
    File.size(video480p_path)
  end

  def video_filesize_720p
    File.size(video720p_path)
  end

end