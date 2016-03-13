module SolrWrapperCreate
  module RakeTask
    Dir[File.expand_path(File.join(__FILE__,"../tasks/*.rake"))].each do |ext|
      load ext
    end if defined?(Rake)
  end
end

