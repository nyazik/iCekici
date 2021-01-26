//
//  PurchasesCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class PurchasesCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        //moneyTakenView.layer.cornerRadius = 10
        cellView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func configureCellShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 5
    }
    
    
    
}
