//
//  CollectionViewCell.swift
//  shopapp
//
//  Created by Еркебулан on 07.02.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var titleButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBAction func addAction(_ sender: Any) {
    }
    static let identifider = String(describing: CollectionViewCell.self)
    static let nib = UINib(nibName: identifider, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func addItem(imageId: Int, title: String, description: String, price: String){
        self.itemImage.image = UIImage(named: "\(imageId).png")
        self.titleButton.setTitle(title, for: .normal)
        self.descriptionLabel.text = description
        self.priceLabel.text = price
    }

}
