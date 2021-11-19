//
//  TabBarControllerViewController.swift
//  Feel
//
//  Created by Chitrala Dhruv on 19/11/21.
//

import UIKit

class TabBarVC: UITabBarController{

    override func viewDidLoad() {
        tabBar.tintColor = .gray
        //tabBar.isTranslucent = false
        tabBar.barTintColor = .black
        
        super.viewDidLoad()
        print("here")
        let vc1 = UINavigationController(rootViewController: firstVC())
        let vc2 = UINavigationController(rootViewController: secondVC())
        let vc3 = UINavigationController(rootViewController: shareVC())
        let vc4 = UINavigationController(rootViewController: fourthVC())
        UITabBar.appearance().barTintColor = .systemBackground
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: false)
    
        modalPresentationStyle = .fullScreen
        
        guard let items = tabBar.items else {
            return
        }
        
        items[3].image = UIImage(systemName: "square.and.arrow.up.fill")
    }
    
    class firstVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .red
            
        }
    }

    class secondVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .gray
        }
        
    }

    class shareVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .blue
        }
        
    }

    class fourthVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .orange
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
