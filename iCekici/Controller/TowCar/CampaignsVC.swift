//
//  CampaignsVC.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit

class CampaignsVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var campaignsImageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func setupLayouts(){
        configureShadow(view: navigationView)
        configureView(view: campaignsImageView)
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    

}
