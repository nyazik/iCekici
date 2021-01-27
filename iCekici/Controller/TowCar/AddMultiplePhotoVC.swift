//
//  AddMultiplePhotoVC.swift
//  iCekici
//
//  Created by Nazik on 25.01.2021.
//

import UIKit

class AddMultiplePhotoVC: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var photoFirstView: UIView!
    @IBOutlet weak var photoSecondView: UIView!
    @IBOutlet weak var photoThirdView: UIView!
    @IBOutlet weak var photoFourthView: UIView!
    @IBOutlet weak var photoFifthView: UIView!
    @IBOutlet weak var photoSixthView: UIView!
    @IBOutlet weak var photoSeventhView: UIView!
    @IBOutlet weak var photoEightView: UIView!
    @IBOutlet weak var photoNinthView: UIView!
    @IBOutlet weak var photoTenthVew: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func  setupLayouts(){
        configureShadow(view: navigationView)
        configureView(view: contentView)
        configureView(view: photoFirstView)
        configureView(view: photoSecondView)
        configureView(view: photoThirdView)
        configureView(view: photoFourthView)
        configureView(view: photoFifthView)
        configureView(view: photoSixthView)
        configureView(view: photoSeventhView)
        configureView(view: photoEightView)
        configureView(view: photoNinthView)
        configureView(view: photoTenthVew)
        
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    

}
