Dir[File.join(__dir__, '/**/*.rb')].each { |f| require(f) }
require "reflexivity_posts/engine"

module ReflexivityPosts
end
