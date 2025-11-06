
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.1.0"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.1.0/AdbrixSDK.xcframework.zip",
      :sha256 => '4b8f958c14b0c8690ee48a86950305d1564699080f4b88347956456e339e587c'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
