//
//  HomeViewController.swift
//  geoshop
//
//  Created by Mac on 18/10/2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var searchBoxView: SearchBoxView!
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let categoryNib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
        
        categoryCollectionView.register(categoryNib, forCellWithReuseIdentifier: "CategoryCell")
        
        let productNib = UINib(nibName: "ProductCollectionViewCell", bundle: nil)
        
        productCollectionView.register(productNib, forCellWithReuseIdentifier: "ProductCell")
        //  if you control drag collection view deleate and datasource to view controller you don't need bottom 2 lines
       // categoryCollectionView.delegate = self
      //  categoryCollectionView.dataSource = self
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == categoryCollectionView{
            return categories.count
        } else {
            return products.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if collectionView == categoryCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCollectionViewCell
            let category = categories[indexPath.item]
            cell.configureCell(with: category.image, and: category.title)
            
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCollectionViewCell
            let product = products[indexPath.item]
            cell.configureCell(image: product.image, name: product.name, description: product.description, price: product.price)
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == categoryCollectionView{
            return CGSize(width: 100, height: 120)
        } else {
            return CGSize(width: (collectionView.bounds.width/2) - 5, height: 248)
        }
    }
    
}
