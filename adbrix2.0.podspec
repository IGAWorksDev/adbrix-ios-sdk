
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.2.3"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.3/AdbrixSDK.xcframework.zip",
      :sha256 => '5c30f0a5a1f0c957cea44ee7292faa82cfde666e8baf756bc897353e2bf4dc3a'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
