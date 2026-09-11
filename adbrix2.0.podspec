
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.2.4"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.4/AdbrixSDK.xcframework.zip",
      :sha256 => '51b62c07ece01aaa768e9a8901a85f9b9b57689d4474bec5d868dd24524b28a4'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
