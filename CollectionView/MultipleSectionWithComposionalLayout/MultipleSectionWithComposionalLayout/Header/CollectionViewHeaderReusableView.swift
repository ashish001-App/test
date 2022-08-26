//
//  CollectionViewHeaderReusableView.swift
//  MultipleSectionWithComposionalLayout
//
//  Created by Admin on 26/08/22.
//

import UIKit

class CollectionViewHeaderReusableView: UICollectionReusableView {

    @IBOutlet weak var cellTitleLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ title: String) {
        cellTitleLabel.text = title
    }
}
