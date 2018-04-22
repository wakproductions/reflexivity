module IPFSHelper
  module_function

  def ipfs_hash_link(hash)
    "http://localhost:8080/ipfs/#{hash}"
  end

end
