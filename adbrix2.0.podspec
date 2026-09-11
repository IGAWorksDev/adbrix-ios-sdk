
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.2.6"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.6/AdbrixSDK.xcframework.zip",
      :sha256 => 'f3de39abbdef187ceb4714817068aa4260dd11d058d8f01984d6c1ab89209bae'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
