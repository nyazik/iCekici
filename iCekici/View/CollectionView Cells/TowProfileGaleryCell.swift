//
//  TowProfileGaleryCell.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 27.01.2021.
//

import UIKit

class TowProfileGaleryCell: UICollectionViewCell {
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
