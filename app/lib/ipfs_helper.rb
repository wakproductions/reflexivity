module IPFSHelper
  module_function

  def ipfs_hash_link(hash)
    "#{IPFS_SERVER}/#{hash}"
  end

end
