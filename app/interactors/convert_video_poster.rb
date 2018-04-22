class ConvertVideoPoster
  include Verbalize::Action

  input :filename, :output_base_filename

  def call
    build_video_poster
    video_poster_path
  end

  private

  def build_video_poster
    FileUtils.copy(File.join(UPLOADED_FILES_PATH, filename), video_poster_path)
  end

  def video_poster_path
    @video_poster_path ||= File.join(IPFS_FILES_PATH, "#{output_base_filename}_poster.jpg")
  end

end