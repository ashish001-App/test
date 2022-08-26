//
//  CollectionViewCell.swift
//  CollectionViewCompositionalLayout
//
//  Created by Admin on 26/08/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(image: UIImage) {
        cellImageView.image = image
    }
    
}
