Pod::Spec.new do |s|
  s.name = 'FritzCore'
  s.version = '7.0.1'
  s.summary = 'Official Fritz SDK for Swift 5.3 and Objective-C'
  s.homepage = 'https://fritz.ai'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE.md' }
  s.author = { 'Jameson Toole' => 'info@fritz.ai' }
  s.source = { :git => 'https://github.com/colensobbdo/fritz-ai-ios-sdk.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.3'
  s.framework = 'CoreML'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.source_files = 'Source/FritzCore/**/*.{h,swift}'
end
