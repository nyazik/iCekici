//
//  TowPhotoGaleryVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 16.01.2021.
//

import UIKit

class CreatingOrderVC: UIViewController {


    @IBOutlet weak var towImageView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
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
    
    @IBAction func goToProfileDetailButtonPressed(_ sender: UIButton) {

    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    

}
