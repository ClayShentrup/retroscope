source('https://rubygems.org')
ruby('2.4.2')

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem('rails') # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem('pg') # Use postgresql as the database for Active Record
gem('puma') # Use Puma as the app server
# ActiveModel::Serializer implementation and Rails hooks
gem('active_model_serializers')
gem('responders') # A set of Rails responders to dry up your application
gem('ember-cli-rails') # Unify your EmberCLI and Rails Workflows
gem('devise') # Flexible authentication solution for Rails with Warden.
gem('simple_token_authentication')
gem('turbolinks')
gem('uglifier')

group :development do
  gem('listen')
end


group :development, :test do
  gem('rspec-rails')
  gem('shoulda-matchers')
  gem('factory_bot_rails')
end
