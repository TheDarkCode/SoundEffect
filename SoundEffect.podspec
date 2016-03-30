Pod::Spec.new do |s|
  s.name             = "SoundEffect"
  s.version          = "0.0.1"
  s.summary          = "Sound Effect is a sample class for quickly incorporating sound effects in iOS, OS X and tvOS apps."
  s.homepage         = "https://github.com/TheDarkCode/SoundEffect"
  s.license          = 'MIT'
  s.author           = { "Mark Hamilton" => "mark@dryverless.com" }
  s.source           = { :git => "https://github.com/TheDarkCode/SoundEffect.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dryverless'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SoundEffect' => ['Pod/Assets/*.png']
  }

end
