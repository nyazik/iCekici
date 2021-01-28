//
//  PreviousOrderDetailVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 24.01.2021.
//

import UIKit
import MapKit

class PreviousOrderDetailVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var towDetailView: UIView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var towPlaqueBorderView: UIView!
    @IBOutlet weak var towBrandBorderView: UIView!
    @IBOutlet weak var towModelBorderView: UIView!
    @IBOutlet weak var towYearBorderView: UIView!
    @IBOutlet weak var towColorBorderView: UIView!
    @IBOutlet weak var towWorkingHoursBorderView: UIView!
    @IBOutlet weak var towHourlyPriceBorderView: UIView!
    @IBOutlet weak var towwDescriptionBorderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()

    }
    
    func setupLayouts(){
        configureShadow(view: navigationView)
        configureCornerRadiusView(view: towDetailView)
        configureCornerRadiusView(view: mapView)
        configureShadow(view: towDetailView)
        configureShadow(view: mapView)
        configureView(view: towPlaqueBorderView)
        configureView(view: towBrandBorderView)
        configureView(view: towModelBorderView)
        configureView(view: towYearBorderView)
        configureView(view: towColorBorderView)
        configureView(view: towWorkingHoursBorderView)
        configureView(view: towHourlyPriceBorderView)
        configureView(view: towwDescriptionBorderView)
        configureBorderView(view: locationView)
        configureBorderView(view: dateView)
    }

    func configureBorderView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }

    
    func configureCornerRadiusView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = UIColor.white.cgColor

    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
    }
    
   
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
