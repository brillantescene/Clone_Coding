//
//  TabBarVC.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/01.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        
    }
    
    func setTabBar() {
        
        self.tabBar.tintColor = UIColor.systemPink

        
        //3
        let LookAround = UIStoryboard.init(name: "LookAround", bundle: nil)
        guard let thirdTab = LookAround.instantiateViewController(identifier: "LookAroundVC")
            as? LookAroundVC  else {
                return
        }
       
        thirdTab.tabBarItem.title = "둘러보기"
        thirdTab.tabBarItem.image = UIImage(systemName: "square.grid.2x2")
        thirdTab.tabBarItem.selectedImage = UIImage(systemName: "square.grid.2x2.fill")
  
        
        let tabs =  [thirdTab]
        
        
//        tabBar.layer.shadowOpacity = 0.1
//        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
//        tabBar.layer.shadowRadius = 3
        self.setViewControllers(tabs, animated: false)
    }}
