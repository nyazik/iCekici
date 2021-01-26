//
//  OrderCell.swift
//  iCekici
//
//  Created by Nazik on 24.01.2021.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var createOrderButton: UIButton!
    

    func configureView(){
        cellView.layer.cornerRadius = 15
    }
    
    func configureCellShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    func configureButton(){
        createOrderButton.layer.cornerRadius = 15

    }
    
}
