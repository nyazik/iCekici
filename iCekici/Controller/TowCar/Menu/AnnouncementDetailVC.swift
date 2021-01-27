//
//  AnnouncementDetailVC.swift
//  iCekici
//
//  Created by Nazik on 26.01.2021.
//

import UIKit

class AnnouncementDetailVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()

    }
    func setupLayouts(){
        configureShadow(view: navigationView)
        configureView(view: contentView)
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
        dismiss(animated: true, completion: nil)
    }
    
}
