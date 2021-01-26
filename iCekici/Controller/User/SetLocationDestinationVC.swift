//
//  SetLocationDestinationVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 20.01.2021.
//

import UIKit
import MapKit

class SetLocationDestinationVC: UIViewController {
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setupLayouts()
    }
    
    func setupLayouts(){
        configureShadow(view: navigationView)
        configureView(view: locationView)
        configureShadow(view: locationView)
        configureButton(button: saveButton)
        configureShadow(view: bottomView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius = 15
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = UIColor.white.cgColor
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
