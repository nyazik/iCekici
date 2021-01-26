//
//  NotificationCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var gradientImageView: UIImageView!
    
    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        //gradientImageView.layer.cornerRadius = 15
    }
    
    func configureViewShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    
  
}
