//
//  AdbrixSwiftUISampleApp.swift
//  AdbrixSwiftUISample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import SwiftUI
import AdbrixSDK

@main
struct AdbrixSwiftUISampleApp: App {
    
    init() {
        Adbrix.shared().sdkInit(
            appkey: "APPKEY",
            secretKey: "SECRETKEY"
        )
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //MARK: Deeplink
                .onOpenURL { url in
                    Adbrix.shared().deepLinkOpen(url: url)
                }
        }
    }
}
