
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.2.2"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.2/AdbrixSDK.xcframework.zip",
      :sha256 => 'a4410b8bdf92fc71192cda7f7c30aec1a9020e415cd8f63491c86a094bff593e'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
