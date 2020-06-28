Pod::Spec.new do |spec|
  spec.name         = 'SwiftUtils'
  spec.version      = '0.0.1'
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.author       = { "Quan Li" => "1083099465@qq.com" }
  spec.summary      = 'Extensions, base classes, tools commonly used in iOS development'
  spec.description  = <<-EOS
  LQAppUtils contains UI utils, common tool classes, MVVM framework, etc.
  EOS
  spec.homepage     = 'https://github.com/LqDeveloper/SwiftUtils'
  spec.source       = { :git => 'https://github.com/LqDeveloper/SwiftUtils.git', :tag => "#{spec.version}" }
  
  #spec.resource     = ""
  spec.requires_arc = true
  spec.platform     = :ios, "9.0"
  spec.swift_version = '5.0'
  spec.default_subspec = 'Extension'
  spec.cocoapods_version = '>= 1.4.0' 

  spec.subspec  'Extension' do |sub|
    sub.source_files  = "LQAppUtils/Extension/*.swift"
    sub.frameworks  = "Foundation","UIKit","WebKit","Security"
  end

  spec.subspec  'Tool' do |sub|
    sub.source_files  = "LQAppUtils/Core/**/*.swift"
    sub.dependency  "SwiftUtils/Extension"
  end

  spec.subspec 'MVVM' do |sub|
    sub.source_files = "LQAppUtils/MVVM/**/*.swift"
    sub.dependency  "SwiftUtils/Tool"
  end

  spec.subspec 'UIUtils' do |sub|
    sub.source_files = "LQAppUtils/UIUtils/**/*.swift"
    sub.dependency "SwiftUtils/Tool"
  end
end


