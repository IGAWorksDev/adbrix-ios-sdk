
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.0.2"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.2/AdbrixSDK.xcframework.zip",
      :sha256 => '1a03e7feaa6162d710ab5ef012d244da175fdfe6031e2fbee788bd271deb491e'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
