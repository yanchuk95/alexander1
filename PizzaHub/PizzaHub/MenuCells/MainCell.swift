//
//  MainCell.swift
//  PizzaHub
//
//  Created by User on 8/27/22.
//

import UIKit

class MainCell: UICollectionViewCell {

    @IBOutlet weak var imageGroup: UIImageView!
    @IBOutlet weak var nameGroup: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(group: Group) {
        self.imageGroup.image = group.image
        self.nameGroup.text = group.name
    }

}
