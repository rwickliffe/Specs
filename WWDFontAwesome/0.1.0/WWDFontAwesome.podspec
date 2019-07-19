Pod::Spec.new do |s|
  s.name         = 'WWDFontAwesome'
  s.version      = '0.1.0'
  s.summary      = 'Adds Font Awesome icon font handling to iOS.'

  s.homepage     = 'https://github.com/rwickliffe/WWDFontAwesome'
  s.license      = 'MIT'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@gmail.com' }

  s.source       = { :git => 'https://github.com/rwickliffe/WWDFontAwesome.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.public_header_files = 'WWDFontAwesome/UI*.h'
  s.source_files = 'WWDFontAwesome/*WWDFontAwesome*.{h,m}'
  s.resource = 'WWDFontAwesome/WWDFontAwesome.bundle'

  s.dependency 'WWDFontLoader'
end
