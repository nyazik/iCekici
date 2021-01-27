//
//  TowPhotoGaleryVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 16.01.2021.
//

import UIKit

class CreatingOrderVC: UIViewController {
    
    @IBOutlet weak var towPhotoGaleryLabel: UIButton!
    @IBOutlet weak var profileInfoLabel: UIButton!
    @IBOutlet weak var towImageView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        firstView.alpha = 1
        secondView.alpha = 0
    }
    
    
    func setupLayouts(){
        configureView(view: towImageView)
        configureBorderView(view:towImageView)
    }
    
    func configureBorderView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
    }

    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func profileInfoButtonPressed(_ sender: UIButton) {

        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        towPhotoGaleryLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        
        firstView.alpha = 1
        secondView.alpha = 0
    }
    
    
    
    @IBAction func towPhotoa(_ sender: UIButton) {
        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        towPhotoGaleryLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        firstView.alpha = 0
        secondView.alpha = 1

    }
    
}
