//
//  BrandsCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 22.01.2021.
//

import UIKit

class BrandsCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
}
