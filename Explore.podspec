Pod::Spec.new do |s|
  s.name             = 'Explore'
  s.version          = '0.1.2'
  s.summary          = 'Explore downloaded apps'
  s.description      = 'Explore easily lets you check to see which apps a user has downloaded. This can be used to help better understand your user to improve the user experience.'

  s.homepage         = 'https://github.com/dnosk/Explore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Noskin (dnosk)' => 'dnoskin@gmail.com' }
  s.source           = { :git => 'https://github.com/dnosk/Explore.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dnosk'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Explore/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Explore' => ['Explore/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
