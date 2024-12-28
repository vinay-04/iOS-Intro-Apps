//
//  EmojiTableViewCell.swift
//  CustomEmojiTableView
//
//  Created by VR on 03/10/24.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiSymbol: UILabel!
    @IBOutlet weak var emojiTitle: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with emoji: Emoji){
        emojiSymbol.text = emoji.symbol
        emojiTitle.text = emoji.name
        emojiDescription.text = emoji.description
    }

}
