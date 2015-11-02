Pod::Spec.new do |s|
  s.name         = 'Redstone'
  s.version      = '0.1.0'
  s.summary      = 'Redstone is a collection of convenience methods to speed up Cocoa development.'

  s.homepage     = 'https://github.com/rwickliffe/Redstone'
  s.license      = 'MIT'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@gmail.com' }
  s.source       = { :git => 'https://github.com/rwickliffe/Redstone.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Redstone/*.{h,m}'

  s.frameworks   = 'UIKit', 'Foundation'
end
