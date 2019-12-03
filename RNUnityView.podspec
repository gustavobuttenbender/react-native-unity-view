require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNUnityView'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = 'https://github.com/f111fei/react-native-unity-view'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/f111fei/react-native-unity-view.git", :tag => "#{s.version}" }
  s.source_files  = 'ios/**/*.{h,m,mm}'

  s.dependency 'React'
end
