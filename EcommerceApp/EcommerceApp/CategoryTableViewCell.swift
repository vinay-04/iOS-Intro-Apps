//
//  TableViewCell.swift
//  EcommerceApp
//
//  Created by VR on 11/11/24.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    static let identifier = "CategoryCell"
    
    @IBOutlet weak var catergoryImage: UIImageView!
    @IBOutlet weak var categoryLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
        
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
