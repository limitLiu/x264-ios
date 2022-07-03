libx264 = 'libx264'
name = "x264-ios"
version = "0.0.1"

Pod::Spec.new do |s|

  s.name         = "#{name}"
  s.version      = "#{version}"
  s.summary      = "A pod repo of stable x264 static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/limitLiu/x264-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "limitliu@qq.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/limitLiu/x264-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '10.0'

  s.ios.preserve_paths = "src/ios/stable/include"
  s.ios.header_mappings_dir = "src/ios/stable/include"

  s.ios.source_files        = "src/ios/stable/include/*.h"
  s.ios.vendored_libraries  = "src/ios/stable/lib/#{libx264}.a"
  s.ios.public_header_files = "src/ios/stable/include/*.h"

end
