//
//  ProductTableViewCell.swift
//  PizzaHub
//
//  Created by User on 8/29/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func setupCell(product: Product) {
        self.productImage.image = product.image
        self.productName.text = product.name
        self.productPrice.text = "\(product.prise)"
    }
        
}
    









































