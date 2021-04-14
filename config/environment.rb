require 'bundler'
Bundler.require

task :console do
  Pry.start
end

require_all 'app'