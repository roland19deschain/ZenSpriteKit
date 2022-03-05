Pod::Spec.new do |spec|
  spec.name             = 'ZenSpriteKit'
  spec.version          = '2.0.0'
  spec.swift_version    = '5.0'
  spec.summary          = 'ZenSpriteKit is a collection of extensions and functions for SpriteKit framework.'
  spec.description      = <<-DESC
ZenSpriteKit is a collection of convenient and concise extensions and functions for SpriteKit framework.
                       DESC
  spec.homepage         = 'https://github.com/roland19deschain/ZenSpriteKit'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  spec.source           = { :git => 'https://github.com/roland19deschain/ZenSpriteKit.git', :tag => spec.version }
  spec.requires_arc     = true
  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.13'
  spec.tvos.deployment_target = '12.0'
  spec.watchos.deployment_target = '4.0'
  spec.source_files     = 'Sources/**/*{swift}'
  spec.dependency 'ZenSwift'
end
