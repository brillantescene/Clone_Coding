//
//  LocalItem.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/16.
//

import UIKit

struct LocalItem {
    var profileImageName: String
    var name: String
    var tag: String
    var when: String
    var local: String
    var auth: String
    var body: String
    var mention: String
    
    func makeItemImage() -> UIImage? {
        return UIImage(named: profileImageName)
    }
}
