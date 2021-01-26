//
//  AssignOrdersToTowCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class AssignOrdersToTowCell: UITableViewCell {

    @IBOutlet weak var assignButtonView: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        assignButtonView.layer.cornerRadius = 10
        roundView.layer.cornerRadius = roundView.frame.height / 2
        assignButtonView.layer.backgroundColor = UIColor.white.cgColor
        roundView.layer.backgroundColor = UIColor.white.cgColor
        cellView.layer.cornerRadius = 15
    }
    
    func configureButtonShadow(){
        roundView.backgroundColor = UIColor.white
        roundView.layer.shadowColor = UIColor.lightGray.cgColor
        roundView.layer.shadowOpacity = 0.5
        roundView.layer.shadowOffset = CGSize.zero
        roundView.layer.shadowRadius = 5
    }

    func configureRoundViewShadow(){
        assignButtonView.backgroundColor = UIColor.white
        assignButtonView.layer.shadowColor = UIColor.lightGray.cgColor
        assignButtonView.layer.shadowOpacity = 0.5
        assignButtonView.layer.shadowOffset = CGSize.zero
        assignButtonView.layer.shadowRadius = 5
    }
    
    

    
    
}

