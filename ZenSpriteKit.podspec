Pod::Spec.new do |s|
  s.name             = 'ZenSpriteKit'
  s.version          = '0.1.0'
  s.swift_version    = '5.0'
  s.summary          = 'ZenSpriteKit is a collection of extensions and functions for SpriteKit framework.'
  s.description      = <<-DESC
ZenSpriteKit is a collection of convenient and concise extensions and functions for SpriteKit framework.
                       DESC
  s.homepage         = 'https://github.com/roland19deschain/ZenSpriteKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  s.source           = { :git => 'https://github.com/roland19deschain/ZenSpriteKit.git', :tag => s.version }
  s.requires_arc     = true
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files     = 'ZenSpriteKit/**/*{swift}'
end
