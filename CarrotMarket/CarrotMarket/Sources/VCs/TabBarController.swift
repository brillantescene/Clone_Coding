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
        self.tabBar.tintColor = UIColor.black
        
        // Home
        let Home = UIStoryboard.init(name: "Home", bundle: nil)
        guard let home = Home.instantiateViewController(identifier: "HomeViewController")
            as? HomeViewController  else {
                return
        }
     
        home.tabBarItem.title = "홈"
        home.tabBarItem.image = UIImage(systemName: "house")
        home.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        // Locals
        let Locals = UIStoryboard.init(name: "Locals", bundle: nil)
        guard let locals = Locals.instantiateViewController(identifier: "LocalsVC")
            as? LocalsVC  else {
                return
        }

        locals.tabBarItem.title = "동네생활"
        locals.tabBarItem.image = UIImage(systemName: "newspaper")
        locals.tabBarItem.selectedImage = UIImage(systemName: "newspaper.fill")
        
        //3
//        let Profile = UIStoryboard.init(name: "Profile", bundle: nil)
//        guard let thirdTab = Profile.instantiateViewController(identifier: "ProfileVC")
//            as? ProfileVC  else {
//                return
//        }
//
//        thirdTab.tabBarItem.image = UIImage(named: "tabbarIconProfileUnselected")
//        thirdTab.tabBarItem.selectedImage = UIImage(named: "tabbarIconProfileSelected")
  
        
        let tabs =  [home, locals]//, secondTab, thirdTab]
        
//        tabBar.layer.shadowOpacity = 0.1
//        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
//        tabBar.layer.shadowRadius = 3
        self.setViewControllers(tabs, animated: false)
    }
}
