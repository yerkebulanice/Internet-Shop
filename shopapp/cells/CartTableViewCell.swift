//
//  CartTableViewCell.swift
//  shopapp
//
//  Created by Еркебулан on 07.02.2021.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func addItem(imageId: Int, title: String, description: String, price: String){
        self.itemImage.image = UIImage(named: "\(imageId).png")
        self.titleLabel.text = title
        self.descriptionLabel.text = description
        self.priceLabel.text = price
    }
    
}
