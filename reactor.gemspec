Gem::Specification.new do |s|
  s.name = 'reactor'
  s.version = '0.0.2'
  s.authors = ['Kyle Drake']
  s.email = ['kyledrake@gmail.com']
  s.homepage = 'https://github.com/kyledrake/reactor'
  s.summary = 'Framework for reactor pattern implementations, patches system with non-blocking IO'
  s.description = 'Framework for reactor pattern implementations, patches system with non-blocking IO. This is abstract, use adapter, ex: gem install reactor-eventmachine'

  s.files = `git ls-files`.split("\n")
  s.require_paths = %w[lib]
  s.rubyforge_project = s.name
  s.required_rubygems_version = '>= 1.3.4'

  s.add_dependency 'em-synchrony', '= 0.3.0.beta.1'
  s.add_dependency 'em-resolv-replace', '= 1.1.1'

  s.add_development_dependency 'wrong', '= 0.5.0'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
end