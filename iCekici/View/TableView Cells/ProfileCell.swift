//
//  ProfileCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 22.01.2021.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var profileMeneImageView: UIImageView!
    
    @IBOutlet weak var profileMenuNameLabel: UILabel!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureRoundViewShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 5
    }
}
