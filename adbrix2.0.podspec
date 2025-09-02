
Pod::Spec.new do |spec|
    spec.name         = "adbrix2.0"
    spec.version      = "3.0.3"
    spec.platform = :ios
    spec.summary      = "adbrix2.0."
    spec.homepage     = "https://www.adbrix.io/"
    spec.description  = <<-DESC
    adbrix2.0 SDK
                     DESC
    spec.license      = { :type => 'Commercial'}
    spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
    spec.source       = { 
      :http => "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.0.3/AdbrixSDK.xcframework.zip",
      :sha256 => 'b998af9f8630e7237121859cb79d075f993994b0107b54a677a9a9bad719f670'
    }
    spec.ios.deployment_target = '12.0'
  
    spec.ios.vendored_frameworks = 'AdbrixSDK.xcframework'
  
  end
  
