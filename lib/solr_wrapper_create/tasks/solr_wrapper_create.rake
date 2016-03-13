require 'solr_wrapper'

namespace :solr do
  desc "Create a collection"
  task create: :start do
    start = ARGV.find_index('solr:create')
    if ARGV.length >= start + 2
      directory = ARGV[start+1]
      name      = ARGV[start+2]
      task(directory.to_sym) {}
      task(name.to_sym) {}
      @solr_instance.create dir: directory, name: name
    else
      raise "usage: solr:create <directory> <name>"
    end
  end
end
