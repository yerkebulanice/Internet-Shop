//
//  TableViewCell.swift
//  shopapp
//
//  Created by Еркебулан on 07.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleLabel: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var toCartButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func itemPage(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "ItemPageViewController") as! ItemPageViewController
//                        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func toCartButton(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func addItem(imageId: Int, title: String, description: String, price: String){
        self.imageItem.image = UIImage(named: "\(imageId).png")
        self.titleLabel.setTitle(title, for: .normal)
        self.descriptionLabel.text = description
        self.priceLabel.text = price
    }
}


