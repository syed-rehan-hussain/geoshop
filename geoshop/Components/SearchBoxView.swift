//
//  SearchBoxView.swift
//  geoshop
//
//  Created by Mac on 19/10/2024.
//

import UIKit

class SearchBoxView: UIView, UITextFieldDelegate {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var SearchTxtField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SearchTxtField.delegate = self
        
        SearchTxtField.attributedPlaceholder = NSAttributedString(
            string: "Search geoshop",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        // Left: Magnifying Glass Image
        let magnifyingImageView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        magnifyingImageView.tintColor = .black // Set black color
        magnifyingImageView.contentMode = .scaleAspectFit
        magnifyingImageView.frame = CGRect(x: 10, y: 0, width: 24, height: 24)
        
        // Adding margin using UIView for leftView
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 34, height: 24)) // 10 points margin (24 width + 10 padding)
        leftView.addSubview(magnifyingImageView)
        SearchTxtField.leftView = leftView
        SearchTxtField.leftViewMode = .always

        // Right: Camera Image
        let cameraImageView = UIImageView(image: UIImage(systemName: "camera"))
        cameraImageView.tintColor = .black // Set black color
        cameraImageView.contentMode = .scaleAspectFit
        cameraImageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        // Adding margin using UIView for rightView
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 34, height: 24)) // 10 points margin (24 width + 10 padding)
        rightView.addSubview(cameraImageView)
        cameraImageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24) // Adjusting image inside the right view
        SearchTxtField.rightView = rightView
        SearchTxtField.rightViewMode = .always
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        Bundle.main.loadNibNamed("SearchBoxView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Shadow properties for SearchTxtField
            let shadowColor = UIColor(red: 0xE3 / 255.0, green: 0xE3 / 255.0, blue: 0xE3 / 255.0, alpha: 0.29).cgColor

            // Apply to SearchTxtField's shadow
            SearchTxtField.layer.shadowColor = shadowColor
            SearchTxtField.layer.shadowOpacity = 0.29
            SearchTxtField.layer.shadowOffset = CGSize(width: 0, height: 3)
            SearchTxtField.layer.shadowRadius = 5
            
            // Optional: Set corner radius
            SearchTxtField.layer.cornerRadius = 8
    }
}
