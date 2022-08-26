//
//  PortraitCollectionViewCell.swift
//  MultipleSectionWithComposionalLayout
//
//  Created by Admin on 26/08/22.
//

import UIKit

class PortraitCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(item: ListItem) {
        cellImageView.image = UIImage(named: item.image)
        cellTitleLabel.text = item.title        
    }

}
