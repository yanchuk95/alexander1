//
//  GroupCell.swift
//  PizzaHub
//
//  Created by User on 8/24/22.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor = . white
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(group: Group, isSelected: Bool) {
        self.nameGroup.text = group.name
        if isSelected {
            self.contentView.backgroundColor = .orange
            self.contentView.layer.cornerRadius = 10
        } else {
            self.contentView.backgroundColor = . white
        }
    }

}

































