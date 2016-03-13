require 'rails'
module SolrWrapperCreate
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'solr_wrapper_create/rake_tasks'
    end
  end
end
