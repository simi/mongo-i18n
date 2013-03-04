$:.unshift(File.expand_path('../../lib', __FILE__))

require 'mongo-i18n'
require 'rspec'

connection = Mongo::Connection.new
DB = connection.db('mongo-i18n-store-test')

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
