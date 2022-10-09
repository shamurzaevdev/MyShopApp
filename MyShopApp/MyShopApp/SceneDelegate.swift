//
//  SceneDelegate.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// Scene Delegate
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions) {
            
            guard let windowScene = (scene as? UIWindowScene) else { return }
            
            window = UIWindow(windowScene: windowScene)
            
            let tabBarController = MainTabBarViewController()
            window?.rootViewController = tabBarController
            window?.backgroundColor = .systemBackground
            window?.makeKeyAndVisible()
    }
}
