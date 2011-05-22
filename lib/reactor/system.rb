bundler_lib = File.expand_path("../..", __FILE__)
$LOAD_PATH.unshift(bundler_lib) unless $LOAD_PATH.include?(bundler_lib)

require 'reactor'
Reactor.system!