//
//  QuickTowListingCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class CanceledTowListingCell: UITableViewCell {

    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var profilePhotoImageView: UIImageView!
    
    @IBOutlet weak var canceledView: UIView!
    @IBOutlet weak var roundView: UIView!
    
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureRoundView(){
        profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.size.height / 2
        roundView.layer.cornerRadius = roundView.frame.size.height / 2
        canceledView.layer.cornerRadius = canceledView.frame.size.height / 2
        
    }
    
    func configureViewShadow(){
//        canceledView.backgroundColor = UIColor.white
        canceledView.layer.shadowColor = UIColor.lightGray.cgColor
        canceledView.layer.shadowOpacity = 0.5
        canceledView.layer.shadowOffset = CGSize.zero
        canceledView.layer.shadowRadius = 5
    }
    
    func configureRoundViewShadow(){
//        roundView.backgroundColor = UIColor.white
        roundView.layer.shadowColor = UIColor.gray.cgColor
        roundView.layer.shadowOpacity = 0.9
        roundView.layer.shadowOffset = CGSize.zero
        roundView.layer.shadowRadius = 5
    }
    
    
    func configureBorderLocationView(){
        locationView.layer.cornerRadius = 15
        locationView.layer.borderColor = UIColor.lightGray.cgColor
        locationView.layer.borderWidth = 1
        locationView.backgroundColor = UIColor.white
        locationView.layer.cornerRadius = 15
    }
    
    func configureBorderDateView(){
        dateView.layer.cornerRadius = 15
        dateView.layer.borderColor = UIColor.lightGray.cgColor
        dateView.layer.borderWidth = 1
        dateView.backgroundColor = UIColor.white
        dateView.layer.cornerRadius = 15
    }
    
    func configureCellShadow(){
//        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    

}
