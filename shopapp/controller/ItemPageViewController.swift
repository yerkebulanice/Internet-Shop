//
//  ItemPageViewController.swift
//  shopapp
//
//  Created by Еркебулан on 07.02.2021.
//

import UIKit

class ItemPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        self.title = "Item"
    }
    
    
//    func configureTableView(){
//        tableView.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cartView")
//    }
    
}
