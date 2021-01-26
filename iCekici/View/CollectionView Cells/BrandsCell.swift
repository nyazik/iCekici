//
//  BrandsCell.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit

class BrandsCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
}
