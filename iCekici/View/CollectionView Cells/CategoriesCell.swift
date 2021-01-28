//
//  CategoriesCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 25.01.2021.
//

import UIKit

class CategoriesCell: UICollectionViewCell {
    
    
    @IBOutlet weak var cellView: UIView!
    
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }

    
}
