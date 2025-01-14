Pod::Spec.new do |s|
  s.name = 'FritzVision'
  s.version = '7.0.1'
  s.summary = 'Official Fritz SDK for Swift 5.0 and Objective-C'
  s.homepage = 'https://fritz.ai'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE.md' }
  s.author = { 'Jameson Toole' => 'info@fritz.ai' }
  s.source = { :git => 'https://github.com/colensobbdo/fritz-ai-ios-sdk.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.weak_framework = 'CoreML'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'FritzCore', '7.0.1'
  s.dependency 'FritzManagedModel', '7.0.1'
  s.dependency 'FritzCoreMLHelpers', '7.0.1'

  s.source_files = 'Source/FritzVision/**/*.{h,swift,c,mlmodel}'
  s.resources = ['Source/FritzVision/ObjectDetection/Helpers/Anchors.csv']
end
