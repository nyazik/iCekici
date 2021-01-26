//
//  CampaignsCell.swift
//  iCekici
//
//  Created by Nazik on 23.01.2021.
//

import UIKit

class CampaignsCell: UITableViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var roundView: UIView!
    
    
    
    func configureView(){
        cellView.roundCorners(corners: [.topRight, .topLeft, .bottomRight],  radius: 15)
        //cellView.layer.cornerRadius  = 15
        roundView.layer.cornerRadius = roundView.frame.height / 2
        
    }
    
    func configureShadow(){
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 5
    }

    
}
