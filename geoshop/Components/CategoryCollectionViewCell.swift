//
//  CategoryCollectionViewCell.swift
//  geoshop
//
//  Created by Mac on 21/10/2024.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        // Initialization code
    }
    
    private func setupUI() {
        // Circle shape for the image
        categoryImageView.layer.cornerRadius = categoryImageView.frame.size.width / 2
        categoryImageView.clipsToBounds = true
    }
    
    func configureCell(with image: UIImage, and title: String) {
        categoryImageView.image = image
        categoryLabel.text = title
    }

}
