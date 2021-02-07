//
//  ViewController.swift
//  shopapp
//
//  Created by Еркебулан on 04.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentControlButton: UISegmentedControl!
    
    var arr : [Item] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        testDataConfigure()
    }
    
    func testDataConfigure(){
        arr.append(Item(imageId: 1, title: "Nike", description: "Sneakers ZOOM FLY 3", price: "73000 kzt"))
        arr.append(Item(imageId: 2, title: "Nike", description: "AIR ZOOM SUPERREP 2", price: "55000 kzt"))
        arr.append(Item(imageId: 3, title: "Adidas", description: "Sneakers 8K 2020", price: "34500 kzt"))
        arr.append(Item(imageId: 4, title: "Polo Ralph Lauren", description: "Sneakers", price: "78000 kzt"))
        arr.append(Item(imageId: 5, title: "Nike", description: "Sneakers REVOLUTION 5", price: "25000 kzt"))
        arr.append(Item(imageId: 6, title: "PUMA", description: "INTERFLEX Modern", price: "26000 kzt"))
        arr.append(Item(imageId: 7, title: "Nike", description: "LEGEND ESSENTIAL 2", price: "27000 kzt"))
        arr.append(Item(imageId: 8, title: "Bikkembergs", description: "Sneakers", price: "85400 kzt"))
        arr.append(Item(imageId: 9, title: "Tommy Hilfiger", description: "Sneakers", price: "28500 kzt"))
        arr.append(Item(imageId: 10, title: "Bugatti", description: "Sneakers", price: "25850 kzt"))
        arr.append(Item(imageId: 11, title: "Reebok Classic", description: "ROYAL GLIDE RPLCLP", price: "28500 kzt"))
        arr.append(Item(imageId: 12, title: "Onitsuka Tiger", description: "Sneakers NEW YORK", price: "39000 kzt"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
        tableView.isHidden = false
        collectionView.isHidden = true
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(CollectionViewCell.nib, forCellWithReuseIdentifier: CollectionViewCell.identifider)
    }

    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tableView")
    }
    
    @IBAction func cartButton(_ sender: Any){
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as! CartViewController
                        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableView") as! TableViewCell
        let item = arr[indexPath.row]
        cell.addItem(imageId: item.imageId, title: item.title, description: item.description, price: item.price)
        return cell
    }
    
    @IBAction func changeLayout(_ sender: Any) {
        if !tableView.isHidden{
            tableView.isHidden = true
            collectionView.isHidden = false
        }else{
            tableView.isHidden = false
            collectionView.isHidden = true
        }
    }
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifider, for: indexPath) as! CollectionViewCell
        let item = arr[indexPath.row]
        cell.addItem(imageId: item.imageId, title: item.title, description: item.description, price: item.price)
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


class Item{
    var imageId = 0
    var title = ""
    var description = ""
    var price = ""

    convenience init(imageId: Int,title: String,description: String, price: String){
        self.init()
        self.imageId = imageId
        self.title = title
        self.description = description
        self.price = price
    }
}

