//
//  CartViewController.swift
//  shopapp
//
//  Created by Еркебулан on 07.02.2021.
//

import UIKit

class CartViewController: UIViewController{

    @IBOutlet weak var cartTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        self.configureTableView()
        self.title = "Cart"
    }
    
    func configureTableView(){
        cartTableView.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cartView")
    }
    
   
   
    
}
