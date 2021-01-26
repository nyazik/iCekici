//
//  ProfileInformationVC.swift
//  iCekici
//
//  Created by Nazik on 26.01.2021.
//

import UIKit
import iOSDropDown
class ProfileInformationVC: UIViewController {

    @IBOutlet weak var towNameView: UIView!
    @IBOutlet weak var towPlaqueView: UIView!
    @IBOutlet weak var towBrandView: UIView!
    @IBOutlet weak var towModelView: UIView!
    @IBOutlet weak var towYearView: UIView!
    @IBOutlet weak var towColorView: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var destinationLocationRondView: UIView!
    @IBOutlet weak var destinationLocationDropDown: DropDown!
    @IBOutlet weak var startLocationDropDown: DropDown!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayouts()
    }
    
  
    
    func setupLayouts(){
        configureView(view: towNameView)
        configureView(view: towPlaqueView)
        configureView(view: towBrandView)
        configureView(view: towModelView)
        configureView(view: towYearView)
        configureView(view: towColorView)
        configureRoundView(view: roundView)
        configureRoundView(view: destinationLocationRondView)
        configureShadow(view: roundView)
        configureShadow(view: destinationLocationRondView)
        configureShadow(view: destinationLocationDropDown)
        configureShadow(view: startLocationDropDown)
        startLocationDropDown.setLeftPaddingPoints(10)
        destinationLocationDropDown.setLeftPaddingPoints(10)
        configureCornerRadius(view: startLocationDropDown)
        configureCornerRadius(view: destinationLocationDropDown)
    }
    
    func configureRoundView(view : UIView){
        view.layer.cornerRadius = view.frame.height / 2
    }
    
    func configureCornerRadius(view : UIView){
        view.layer.cornerRadius = 10
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 1
//        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
    }

    func configureShadow(view: UIView){
//        view.backgroundColor = UIColor.clear
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.9
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 15
    }

}
