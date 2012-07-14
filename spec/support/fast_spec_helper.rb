module FastSpecHelper
  def require_active_record
    require 'active_record'
    config = YAML.load(File.open(File.expand_path(File.dirname(__FILE__)) << '/../../config/database.yml'))
    ActiveRecord::Base.establish_connection(config['test'])
  end
end