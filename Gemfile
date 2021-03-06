require './lib/load_customizations_helper'

ruby '2.5.1'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core gems
gem 'rails',  '~> 5.1.4'
gem 'pg',     '~> 0.18'
gem 'puma',   '~> 3.7'

# View rendering related gems
gem 'bootstrap'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'omniauth'
gem 'sass-rails', '~> 5.0'
gem 'slim'
# gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Functional backend gems
gem 'devise'
gem 'kaminari'
gem 'ipfs'
gem 'patreon', git: 'https://github.com/wakproductions/patreon-ruby.git', branch: 'fix_json_parse_error_7'
gem 'radiator'
gem 'streamio-ffmpeg'
gem 'tzinfo-data'
gem 'verbalize'

# Reflexivity addons
gem 'reflexivity_posts', path: 'engines/reflexivity_posts'

# Load Reflexivity site-specific customization engines
LoadCustomizationsHelper.engine_names.each do |engine|
  gem engine, path: "engines-customization/#{engine}"
end

group :development, :test do
  # gem 'dotenv-rails' # allows use of .env file for local development
  gem 'rspec-rails'

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'clipboard'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end