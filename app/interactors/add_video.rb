class AddVideo
  include Verbalize::Action

  input :video_filename, :poster_filename, :original_publication_date, :title, optional: [:upload_date]

  def call
    video_metadata.update(converted_video_metadata_attributes)
    video_metadata.reload
  end

  private

  def add_to_ipfs(file_path)
    IPFSOperations::AddFile.call(file_path: file_path).value.hashcode
  end

  def base_filename
    @base_filename ||= BuildConvertedVideoFilenameBase.call(video_metadata)
  end

  # TODO use imagemagick to convert the poster to the appropriate size
  def build_poster
    @build_poster ||= ConvertVideoPoster.call(
      filename: poster_filename, output_base_filename: base_filename
    )
  end

  def build_converted_videos
    @build_converted_videos ||= ConvertUploadedVideo.call(
      filename: video_filename,
      output_base_filename: base_filename
    )
  end

  def upload_date
    @upload_date ||= File.ctime(video_path)
  end

  def converted_video_metadata_attributes
    {
      uploader_id: 1, # TODO hard coded temporarily
      attributions: nil,                                               
      video_poster_480x360_file_name: File.basename(build_poster.value),
      video_poster_480x360_ipfs_hash: add_to_ipfs(video_poster_path),
      video_480p_file_name: File.basename(build_converted_videos.value[:video480p_path]),
      video_720p_file_name: File.basename(build_converted_videos.value[:video720p_path]),
      video_480p_ipfs_hash: add_to_ipfs(build_converted_videos.value[:video480p_path]),
      video_720p_ipfs_hash: add_to_ipfs(build_converted_videos.value[:video720p_path]),
      video_filesize_480p: build_converted_videos.value[:video_filesize_480p],
      video_filesize_720p: build_converted_videos.value[:video_filesize_720p],
      video_duration: build_converted_videos.value[:video_duration],
    }
  end

  def video_path
    @video_path ||= File.join(UPLOADED_FILES_PATH, video_filename)
  end

  def video_poster_path
    @video_poster_path ||= build_poster.value
  end

  def video_metadata
    @video_metadata ||= VideoMetadata.find_or_create_by(
      original_publication_date: original_publication_date,
      title: title,
      upload_date: upload_date,
      video_unprocessed_file_name: video_filename
    )
  end
end