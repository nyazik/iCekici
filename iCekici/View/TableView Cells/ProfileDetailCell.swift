//
//  ProfileDetailCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 14.01.2021.
//

import UIKit

class ProfileDetailCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var borderView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        borderView.layer.borderColor = UIColor.black.cgColor
        borderView.layer.borderWidth = 1
        borderView.backgroundColor = UIColor.white
        borderView.layer.cornerRadius = 15
    }
    
}
