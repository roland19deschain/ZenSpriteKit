Pod::Spec.new do |spec|
  spec.name             = 'ZenSpriteKit'
  spec.version          = '2.1.0'
  spec.swift_version    = '5.10'
  spec.summary          = 'ZenSpriteKit is a collection of extensions and functions for SpriteKit framework.'
  spec.description      = <<-DESC
ZenSpriteKit is a collection of convenient and concise extensions and functions for SpriteKit framework.
                       DESC
  spec.homepage         = 'https://github.com/roland19deschain/ZenSpriteKit'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  spec.source           = { :git => 'https://github.com/roland19deschain/ZenSpriteKit.git', :tag => spec.version }
  spec.requires_arc     = true
  spec.ios.deployment_target = '14.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '14.0'
  spec.watchos.deployment_target = '6.0'
  spec.source_files     = 'Sources/**/*{swift}'
  spec.dependency 'ZenSwift'
end
