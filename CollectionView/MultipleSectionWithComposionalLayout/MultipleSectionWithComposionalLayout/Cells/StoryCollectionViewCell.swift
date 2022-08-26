//
//  StoryCollectionViewCell.swift
//  MultipleSectionWithComposionalLayout
//
//  Created by Admin on 26/08/22.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("StoryCollectionViewCell", #function)
        // Initialization code
    }

    func setupCell(item: ListItem) {
        cellImageView.image = UIImage(named: item.image)
        cellImageView.layoutIfNeeded()
        cellImageView.layer.cornerRadius = self.cellImageView.frame.height/2
    }
    
}
