//
//  SceneDelegate.swift
//  SwiftSample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import UIKit

import AdbrixSDK

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //MARK: DeepLink (Cold Start)
        if let deepLinkUrl = connectionOptions.urlContexts.first?.url {
            Adbrix.shared().deepLinkOpen(url: deepLinkUrl)
        }
        
        //MARK: UniversalLink (Cold Start)
        if let userActivity = connectionOptions.userActivities.first,
            userActivity.activityType == NSUserActivityTypeBrowsingWeb,
           let deepLinkUrl = userActivity.webpageURL {
            Adbrix.shared().deepLinkOpen(url: deepLinkUrl)
        }
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    //MARK: DeepLink (While Running)
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let deepLinkUrl = URLContexts.first?.url {
            Adbrix.shared().deepLinkOpen(url: deepLinkUrl)
        }
    }
    
    //MARK: UniversalLink (While Running)
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        if userActivity.activityType == NSUserActivityTypeBrowsingWeb,
           let deepLinkUrl = userActivity.webpageURL {
            Adbrix.shared().deepLinkOpen(url: deepLinkUrl)
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

