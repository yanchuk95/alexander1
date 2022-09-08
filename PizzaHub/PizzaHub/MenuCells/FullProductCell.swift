//
//  FullProductCell.swift
//  PizzaHub
//
//  Created by User on 8/30/22.
//

import UIKit

class FullProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productMass: UILabel!
    @IBOutlet weak var productNutritional: UILabel!
    @IBOutlet weak var produstCalories: UILabel!
    @IBOutlet weak var productCarbohydrates: UILabel!
    @IBOutlet weak var productProteins: UILabel!
    @IBOutlet weak var productFats: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addButton.layer.cornerRadius = 10
    }
    
    func setupCell(product: Product) {
        self.productName.text = product.name
        self.productImage.image = product.image
        self.productDescription.text = product.description
        self.productPrice.text = "Стоимость \(product.prise) руб."
        self.productMass.text = String(describing: product.mass ?? "")
        self.productNutritional.text = "Пищевая ценность продукта:"
        self.produstCalories.text = "\(product.calories ?? 0) кКал"
        self.productCarbohydrates.text = "\(product.carbohydrates ?? 0) гр"
        self.productProteins.text = "\(product.protein ?? 0) гр"
        self.productFats.text = "\(product.fats ?? 0) гр"
        
    }

}






