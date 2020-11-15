//
//  ItemDetailVC.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/09.
//

import UIKit

class ItemDetailVC: UIViewController {

    @IBOutlet var itemDetailTableView: UITableView!
    
    var item: Item?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}
//extension setCell
extension ItemDetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageDetailCell.identifier) as? ImageDetailCell else { return UITableViewCell() }
        cell.setCell() //rank: indexPath.row,
        return cell
    }
}

extension ItemDetailVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        if let nextVC = self.storyboard?.instantiateViewController(identifier: "ImageDetailCell") as? ImageDetailCell {
            nextVC.item = item
//            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
