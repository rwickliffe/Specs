Pod::Spec.new do |s|
  s.name         = 'Redstone'
  s.version      = '0.1.1'
  s.summary      = 'Redstone is a collection of convenience methods to speed up Cocoa development.'

  s.homepage     = 'https://github.com/rwickliffe/Redstone'
  s.license      = 'MIT'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@gmail.com' }
  s.source       = { :git => 'https://github.com/rwickliffe/Redstone.git',
                     :tag => s.version }

  s.source_files = 'Redstone/*.{h,m}'

  pch_SLC = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_SLC

  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.watchos.deployment_target = '2.0'

  s.frameworks   = 'UIKit', 'Foundation'
end
