//
//  AnnouncementsCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 26.01.2021.
//

import UIKit

class AnnouncementsCell: UITableViewCell {

    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var towImageView: UIImageView!
    
    
    func configureShadow(){
        cellView.layer.cornerRadius = 15
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.gray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    
    func configureBorderView(){
        towImageView.layer.cornerRadius = 15
        towImageView.layer.borderColor = UIColor.lightGray.cgColor
        towImageView.layer.borderWidth = 0.5
        towImageView.backgroundColor = UIColor.white
        towImageView.layer.cornerRadius = 15
    }
    
}
