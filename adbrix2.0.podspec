
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.0.0"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.0/AdbrixSDK.xcframework.zip",
      :sha256 => 'bb2e95c762c4e05cb3ad8297eee4f2b17c74b5523a0d26c0a50e352cc0442517'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
