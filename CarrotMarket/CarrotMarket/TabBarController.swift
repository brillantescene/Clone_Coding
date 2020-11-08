//
//  TabBarController.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/08.
//

import UIKit

class TabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    
    func setTabBar() {
        guard let HomeViewController = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        else { return
        }
        HomeViewController.tabBarItem.title = "홈"
        HomeViewController.tabBarItem.image = UIImage(systemName: "house")
        HomeViewController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        setViewControllers([HomeViewController], animated: true)
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
