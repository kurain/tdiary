$:.unshift("./misc")
require 'rack/tdiary_app'
require 'tdiary/test_supporter'


require 'appengine-rack'
AppEngine::Rack.configure_app(
    :application => "gaediary",
    :version => 1)

if $CUKE
  Diary::TestSupporter.setup_tdiary_conf_memo
end

use Rack::ShowExceptions
use Rack::CommonLogger
use Rack::Lint

use Rack::Reloader

use Rack::Static, :urls => ["/theme"], :root => "./"

map "/" do
  run Rack::TDiaryApp.new(:index)
end

map "/index.rb" do
  run Rack::TDiaryApp.new(:index)
end

map "/update.rb" do
  run Rack::TDiaryApp.new(:update)
end
