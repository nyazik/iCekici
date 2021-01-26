//
//  AssignOrderPopupVC.swift
//  iCekici
//
//  Created by Nazik on 26.01.2021.
//

import UIKit
import iOSDropDown

class AssignOrderPopupVC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var towsListingDropDown: DropDown!
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var towName: UIView!
    @IBOutlet weak var towPlaque: UIView!
    @IBOutlet weak var towBrand: UIView!
    @IBOutlet weak var towModel: UIView!
    @IBOutlet weak var towYear: UIView!
    @IBOutlet weak var towColor: UIView!
    @IBOutlet weak var towWoringHours: UIView!
    @IBOutlet weak var towHourlyPrice: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var assignView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func setupLayouts(){
        configureShadow(view: popUpView)
        
        configureBorderView(view: towName)
        configureBorderView(view: towPlaque)
        configureBorderView(view: towBrand)
        configureBorderView(view: towModel)
        configureBorderView(view: towYear)
        configureBorderView(view: towColor)
        configureBorderView(view: towWoringHours)
        configureBorderView(view: towHourlyPrice)
        
        confifurePopupView()
        
        configureRoundView(view: roundView)
        configureShadow(view: roundView)
        configureRoundView(view: assignView)
        configureRoundView(view: towsListingDropDown)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        backgroundView.addGestureRecognizer(tap)
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        dismiss(animated: false, completion: nil)
    }
    
    
    func confifurePopupView(){
        popUpView.layer.cornerRadius = 15
        
    }

    func configureShadow(view: UIView){
//        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 0.9
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureBorderView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
//        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
    }
    
    func configureRoundView(view: UIView){
        view.layer.cornerRadius = view.frame.size.height / 2
    }
    
    @IBAction func assignButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
}
