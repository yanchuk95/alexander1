

import UIKit

class DeliverTableViewCell: UITableViewCell {
    
    @IBOutlet weak var deliverySummLable: UILabel!
    @IBOutlet weak var deliveryButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
