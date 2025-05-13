
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.0.1"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.1/AdbrixSDK.xcframework.zip",
      :sha256 => 'a6c39e16eebb154468c1d11f5dbd04da184dd26b8f5f119d9a2318fe664fe3b6'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
