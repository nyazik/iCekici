//
//  ChooseFromMapVC.swift
//  iCekici
//
//  Created by Nazik on 24.01.2021.
//

import UIKit
import MapKit


class ChooseFromMapVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func setupLayouts(){
        configureShadow(view: navigationView)
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
