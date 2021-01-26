//
//  AllMyTowsCell.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit

class AllMyTowsCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var seeLocationView: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var towImageView: UIImageView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureBorderView(){
        towImageView.layer.cornerRadius = 15
        towImageView.layer.borderColor = UIColor.lightGray.cgColor
        towImageView.layer.borderWidth = 1
        towImageView.backgroundColor = UIColor.white
    }
    
    
    func configureRoundView(){
        roundView.layer.cornerRadius = roundView.frame.size.height / 2
        seeLocationView.layer.cornerRadius = seeLocationView.frame.size.height / 2
    }
    
    func configureViewShadow(){
//        seeLocationView.backgroundColor = UIColor.white
        seeLocationView.layer.shadowColor = UIColor.lightGray.cgColor
        seeLocationView.layer.shadowOpacity = 0.5
        seeLocationView.layer.shadowOffset = CGSize.zero
        seeLocationView.layer.shadowRadius = 5
    }
    
    func configureRoundViewShadow(){
//        roundView.backgroundColor = UIColor.white
        roundView.layer.shadowColor = UIColor.gray.cgColor
        roundView.layer.shadowOpacity = 0.9
        roundView.layer.shadowOffset = CGSize.zero
        roundView.layer.shadowRadius = 5
    }
    
    func configureCellShadow(){
//        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    
    
}
