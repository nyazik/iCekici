//
//  TowProfileVC.swift
//  iCekici
//
//  Created by Nazik on 25.01.2021.
//

import UIKit

class TowProfileVC: UIViewController {

    @IBOutlet weak var towImageView: UIView!
    
    @IBOutlet weak var towPhotoGaleryLabel: UIButton!
    @IBOutlet weak var profileInfoLabel: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)

        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0
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
        dismiss(animated: false, completion: nil)
    }
    
    
    
    @IBAction func profileInfoButtonPressed(_ sender: UIButton) {

        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        towPhotoGaleryLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        locationButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0

    }
    
    
    @IBAction func towPhotoGalery(_ sender: UIButton) {
        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        towPhotoGaleryLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        locationButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        firstView.alpha = 0
        secondView.alpha = 1
        thirdView.alpha = 0

    }
 
    
    @IBAction func seeLocation(_ sender: UIButton) {
        profileInfoLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        towPhotoGaleryLabel.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        locationButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        firstView.alpha = 0
        secondView.alpha = 0
        thirdView.alpha = 1

    }
    
}
