//
//  TowListingCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 15.01.2021.
//

import UIKit



class TowListingCell: UITableViewCell {
    
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var refuseView: UIView!
    @IBOutlet weak var sendView: UIView!
    @IBOutlet weak var assignView: UIView!
    @IBOutlet weak var assignSendView: UIView!
 
    
    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureRoundView(){
        refuseView.layer.cornerRadius = refuseView.frame.size.height / 2
        sendView.layer.cornerRadius = sendView.frame.size.height / 2
        assignView.layer.cornerRadius = assignView.frame.size.height / 2
        assignSendView.layer.cornerRadius = assignSendView.frame.size.height / 2
    }
    
    func configureAssignSendViewViewShadow(){
//        assignSendView.backgroundColor = UIColor.white
        assignSendView.layer.shadowColor = UIColor.gray.cgColor
        assignSendView.layer.shadowOpacity = 0.9
        assignSendView.layer.shadowOffset = CGSize.zero
        assignSendView.layer.shadowRadius = 5
    }

    func configureAssignViewShadow(){
//        assignView.backgroundColor = UIColor.white
        assignView.layer.shadowColor = UIColor.lightGray.cgColor
        assignView.layer.shadowOpacity = 0.5
        assignView.layer.shadowOffset = CGSize.zero
        assignView.layer.shadowRadius = 5
    }
    
    func configureRefuseViewShadow(){
//        refuseView.backgroundColor = UIColor.white
        refuseView.layer.shadowColor = UIColor.lightGray.cgColor
        refuseView.layer.shadowOpacity = 0.5
        refuseView.layer.shadowOffset = CGSize.zero
        refuseView.layer.shadowRadius = 5
    }
    
    func configureSendViewShadow(){
//        sendView.backgroundColor = UIColor.white
        sendView.layer.shadowColor = UIColor.gray.cgColor
        sendView.layer.shadowOpacity = 0.9
        sendView.layer.shadowOffset = CGSize.zero
        sendView.layer.shadowRadius = 5
    }
    
    
    func configureBorderLocationView(){
        locationView.layer.cornerRadius = 15
        locationView.layer.borderColor = UIColor.lightGray.cgColor
        locationView.layer.borderWidth = 1
//        locationView.backgroundColor = UIColor.white
        locationView.layer.cornerRadius = 15
    }
    
    func configureBorderDateView(){
        dateView.layer.cornerRadius = 15
        dateView.layer.borderColor = UIColor.lightGray.cgColor
        dateView.layer.borderWidth = 1
//        dateView.backgroundColor = UIColor.white
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
