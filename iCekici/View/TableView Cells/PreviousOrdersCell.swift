//
//  NewCellCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 19.01.2021.
//

import UIKit

class PreviousOrdersCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var towImageView: UIImageView!
    
    @IBOutlet weak var newOrderButtonView: UIView!
    
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        //newOrderButtonView.layer.cornerRadius = 15
    }
    
    func configureBorder(){
        towImageView.layer.cornerRadius = 15
        towImageView.layer.borderColor = UIColor.lightGray.cgColor
        towImageView.layer.borderWidth = 1
        towImageView.backgroundColor = UIColor.white
        towImageView.layer.cornerRadius = 15
        }
    
    func configureShadow(){
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOpacity = 0.3
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowRadius = 3
    }

}
