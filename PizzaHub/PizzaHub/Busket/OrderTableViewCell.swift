//
//  OrderTableViewCell.swift
//  PizzaHub
//
//  Created by User on 9/9/22.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var orderImage: UIImageView!
    @IBOutlet weak var orderNameLable: UILabel!
    @IBOutlet weak var orderAmtLable: UILabel!
    @IBOutlet weak var minusOneButton: UIButton!
    @IBOutlet weak var plusOneButton: UIButton!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func settings() {
        self.orderImage = (imageArray[0] as! UIImageView)
        self.minusOneButton.layer.cornerRadius = 5
        self.minusOneButton.backgroundColor = .orange
        self.plusOneButton.layer.cornerRadius = 5
        self.plusOneButton.backgroundColor = .orange
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
    
