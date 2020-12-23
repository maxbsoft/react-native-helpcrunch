require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = 'react-native-helpcrunch'
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-helpcrunch
                   DESC
  s.homepage     = "https://github.com/maxbsoft/react-native-helpcrunch"
  s.license      = "MIT"
  s.authors      = { "Ítalo Menezes" => "italo@kyte.com.br" }
  s.platforms    = :ios, '10'
  s.source       = { git: 'https://github.com/maxbsoft/react-native-helpcrunch.git', tag: "v#{s.version}" }
  s.source_files = 'ios/*.{h,m,swift}'
  s.static_framework = true

  s.dependency 'React-Core'
  s.dependency 'HelpCrunchSDK'
end
