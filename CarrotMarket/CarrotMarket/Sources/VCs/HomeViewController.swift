//
//  HomeViewController.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var rootView: UIView!
    @IBOutlet var topView: UIView!
    @IBOutlet var topViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var itemTableView: UITableView!
    @IBOutlet var plusButton: UIButton!
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setItemData()
        itemTableView.dataSource = self
        itemTableView.delegate = self
        plusButton.layer.shadowOpacity = 0.2
        plusButton.layer.shadowRadius = 3
        plusButton.layer.shadowOffset = CGSize(width: 0, height: 3)
    }

    func setItemData() {
        items.append(contentsOf: [
            Item(title: "Lovesick Girls", location: "일산서구 송포동", time: "방금 전", price: "70,000원", itemImageName: "blackpink"),
            Item(title: "Dynamite", location: "정발산동", time: "방금 전", price: "15,000원", itemImageName: "bts"),
            Item(title: "positions", location: "고양시 일산동구 마두동", time: "끌올 5초 전", price: "30,000원", itemImageName: "ariana"),
            Item(title: "놓아줘 (with 태연)", location: "일산동", time: "끌올 5초 전", price: "6,000원", itemImageName: "crush"),
            Item(title: "I CAN'T STOP ME", location: "파주시 금촌2동", time: "끌올 2일 전", price: "230,000원", itemImageName: "twice"),
            Item(title: "Make A Wish (Birthday Song)", location: "고양시 일산동구 풍산동", time: "8초 전", price: "5,000원", itemImageName: "nctu"),
            Item(title: "ALIEN", location: "야당동", time: "9초 전", price: "30,000원", itemImageName: "leesuhyeon"),
            Item(title: "DON'T TOUCH ME", location: "고양시 일산동구 백석동", time: "16초 전", price: "50,000원", itemImageName: "hwanbool"),
            Item(title: "Pretty Savage", location: "탄현동", time: "16초 전", price: "20,000원", itemImageName: "blackpink"),
            Item(title: "Bet You Wanna (feat. Cardi B)", location: "야당동", time: "6시간 전", price: "5,000원", itemImageName: "blackpink")
        ])
    }
}
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemListCell.identifier) as? ItemListCell else { return UITableViewCell() }
        cell.setCell(item: items[indexPath.row]) //rank: indexPath.row,
        return cell
    }
}
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        
        
        let dVC = self.presentingViewController as? UITabBarController
        dVC?.selectedIndex = 0
        
//        guard let homeVC = dVC?.selectedViewController as? HomeVC else { return }
//        homeVC.part = self.partTextfield.text
//        homeVC.name = self.nameTextfield.text
//        self.presentingViewController?.dismiss(animated: true)
        
        
        let selectItem = items[indexPath.row]
        if let nextVC = dVC?.storyboard?.instantiateViewController(identifier: "ItemDetailVC") as? ItemDetailVC {
            nextVC.item = selectItem
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
//extension HomeViewController: UIScrollViewDelegate {
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        UIView.animate(withDuration: 0.5, animations: {
//            self.topViewHeightConstraint.constant = 62
//            self.rootView.layoutIfNeeded()
//        })
//    }
//
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        if (decelerate) {
//            UIView.animate(withDuration: 0.5, animations: {
//                self.topViewHeightConstraint.constant = 0
//                self.rootView.layoutIfNeeded()
//            })
//        }
//    }
//}
//
