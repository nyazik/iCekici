//
//  TowProfileVC.swift
//  iCekici
//
//  Created by Nazik on 25.01.2021.
//

import UIKit

class TowProfileVC: UIViewController {

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
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
}
