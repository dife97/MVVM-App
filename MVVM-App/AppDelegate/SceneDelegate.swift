//
//  SceneDelegate.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let mainNavigationController = getTelaANavigationController()
        
        window = UIWindow(windowScene: windowScene)
        
        window?.rootViewController = mainNavigationController
        
        window?.makeKeyAndVisible()
    }
    
    private func getTelaANavigationController() -> UINavigationController {
        
        let telaANavigationController = UINavigationController(rootViewController: TelaAViewController())
        
        telaANavigationController.navigationBar.tintColor = .systemPink
        
        return telaANavigationController
    }
}
