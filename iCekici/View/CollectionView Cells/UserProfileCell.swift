//
//  UserMenuCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 20.01.2021.
//

import UIKit

class UserProfileCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var towImageView: UIImageView!
    
    @IBOutlet weak var towNameLabel: UILabel!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        
    }
    
    func configuretabbarShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 5
    }

    
}
