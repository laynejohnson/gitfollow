//
//  SceneDelegate.swift
//  GitFollow
//
//  Created by Layne Johnson on 3/9/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // Underscore --> var name.
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Search navigation controller.
        let searchNC = UINavigationController(rootViewController: SearchVC())
        
        // Favorites navigation controller.
        let favoritesNC = UINavigationController(rootViewController: FavoritesListVC())
        
        // UITabBarController (navigation controller) holds an array of view controllers.
        let tabbar = UITabBarController()
        tabbar.viewControllers = [searchNC, favoritesNC]
        
        // Initialize UIWindow. Fullscreen frame.
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        // Configure window. Each window has a window scene.
        window?.windowScene = windowScene
        
        // Set root view controller.
        window?.rootViewController = tabbar
        
        // Make window visible.
        window?.makeKeyAndVisible()
    }
    
    func createSearchNavigationController() -> UINavigationController {
        
        // Initialize search view controller.
        let searchVC = SearchVC()
        
        // Tab/navigation bar configured inside view controller.
        searchVC.title = "Search"
        
        // Configure custom tab bar assets here. Icon placement indicated with array index.
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        // Return navigation controller.
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        
        // Initialize favorites list view controller.
        let favoritesVC = FavoritesListVC()
        
        // Configure tab/navigation controllers.
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        // Return navigation controller.
        return UINavigationController(rootViewController: favoritesVC)
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

/* Notes:
 func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
     // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
     // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
     
     // Underscore --> var name.
     guard let windowScene = (scene as? UIWindowScene) else { return }
     
     // Search navigation controller.
     let searchNC = UINavigationController(rootViewController: SearchVC())
     
     // Favorites navigation controller.
     let favoritesNC = UINavigationController(rootViewController: FavoritesListVC())
     
     // UITabBarController (navigation controller) holds an array of view controllers.
     let tabbar = UITabBarController()
     tabbar.viewControllers = [searchNC, favoritesNC]
     
     // Initialize UIWindow. Fullscreen frame.
     window = UIWindow(frame: windowScene.coordinateSpace.bounds)
     
     // Configure window. Each window has a window scene.
     window?.windowScene = windowScene
     
     // Set root view controller.
     window?.rootViewController = tabbar
     
     // Make window visible.
     window?.makeKeyAndVisible()
 }
 */

