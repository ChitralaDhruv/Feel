//
//  TabBarControllerViewController.swift
//  Feel
//
//  Created by Chitrala Dhruv on 19/11/21.
//

import UIKit

class TabBarVC: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
        tabBar.tintColor = .green
        tabBar.barTintColor = .systemGray
    
        let vc1 = UINavigationController(rootViewController: firstVC())
        let vc2 = UINavigationController(rootViewController: secondVC())
        let vc3 = UINavigationController(rootViewController: feelVC())
        let vc4 = UINavigationController(rootViewController: shareVC())
        let vc5 = UINavigationController(rootViewController: fifthVC())
        UITabBar.appearance().barTintColor = .systemBackground
        
        setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
    
        modalPresentationStyle = .fullScreen
        
        guard let items = tabBar.items else {
            return
        }
        
        items[0].image = UIImage(systemName: "face.dashed.fill")
        items[1].image = UIImage(systemName: "calendar")
        items[2].image = UIImage(systemName: "flame.fill")
        items[3].image = UIImage(systemName: "square.and.arrow.up.fill")
        items[4].image = UIImage(systemName: "person.circle.fill")
        
    }
    
}
    
