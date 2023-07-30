MRuby::Gem::Specification.new('mruby-esp32-mcpwm') do |spec|
  spec.license = 'MIT'
  spec.author  = 'yuuu'
  spec.summary = 'MCPWM class on ESP32'

  spec.add_dependency('mruby-rational', :core => 'mruby-rational')
end
