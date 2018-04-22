require 'ipfs/client'

module IPFSOperations
  class AddFile
    include Verbalize::Action

    input :file_path

    def call
      add_to_ipfs(file_path)
    end

    private

    def add_to_ipfs(pathname)
      client = IPFS::Client.new(host: 'http://ipfs', port: 5001) # TODO put in env var
      IPFS::Commands::Add.call(client, File.open(pathname))
    end

  end
end