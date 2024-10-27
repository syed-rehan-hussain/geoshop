//
//  ProductCollectionViewCell.swift
//  geoshop
//
//  Created by Mac on 22/10/2024.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productShortDescription: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(image: UIImage, name: String, description: String, price: String ) {
        productImage.image = image
        productName.text = name
        productShortDescription.text = description
        productPrice.text = price
    }

}
