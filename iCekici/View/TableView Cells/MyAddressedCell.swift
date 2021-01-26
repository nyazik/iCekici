//
//  MyAddressedCell.swift
//  iCekici
//
//  Created by Nazik on 24.01.2021.
//

import UIKit

class MyAddressedCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        cellView.layer.backgroundColor = UIColor.white.cgColor
    }
    

    func configureShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }
    
    
    
}
