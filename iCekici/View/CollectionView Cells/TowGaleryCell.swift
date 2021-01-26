//
//  TowGaleryCell.swift
//  iCekici
//
//  Created by Nazik on 26.01.2021.
//

import UIKit

class TowGaleryCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    func configureView(){
        cellView.layer.cornerRadius = 15
        cellView.layer.backgroundColor = UIColor.clear.cgColor
    }
    
    func configureBorderView(){
        cellView.layer.cornerRadius = 15
        cellView.layer.borderColor = UIColor.gray.cgColor
        cellView.layer.borderWidth = 1
        cellView.backgroundColor = UIColor.white
        cellView.layer.cornerRadius = 15
    }
    
}
