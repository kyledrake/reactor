libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

module Reactor
  def self.system!(*which)
    which = Dir.glob(File.join(File.dirname(__FILE__), 'reactor', 'system', '**/*.rb')) if which.empty?
    which.each { |f| require f }
  end
end