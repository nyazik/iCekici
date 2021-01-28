//
//  DetailPageVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 22.01.2021.
//

import UIKit
import MapKit

class DetailPageVC: UIViewController {
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var profileDetailView: UIView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var profileImageVieW: UIImageView!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var declineView: UIView!
    @IBOutlet weak var assignView: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var assignRoundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchTapped(_:)))
        assignView.addGestureRecognizer(tap)

        
    }
    
    @objc func touchTapped(_ sender: UITapGestureRecognizer) {
        let vc = AssignOrderPopupVC(nibName: "AssignOrderPopupVC", bundle: nil)
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: false, completion: nil)
    }
    
    func setupLayouts(){
        //configureTabbarView(view: tabbarView)
        configureShadow(view: navigationView)
        configureRoundImageView(image: profileImageVieW)
        configureRoundView(view: declineView)
        configureRoundView(view: assignView)
        configureRoundView(view: roundView)
        configureRoundView(view: assignRoundView)
        
        configureContextView(view: profileDetailView)
        configureContextView(view: mapView)
        configureView(view: locationView)
        configureView(view: dateView)
        configureShadow(view: profileDetailView)
        configureView(view: mapView)
        configureShadow(view: roundView)
        configureShadow(view: assignRoundView)
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.5
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 15
    }
    
    func configureShadow(view: UIView){
//        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 0.9
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureRoundView(view: UIView){
        view.layer.cornerRadius = view.frame.height / 2
    }
    
    func configureRoundImageView(image: UIImageView){
        image.layer.cornerRadius = image.frame.height / 2
    }
    
    
    func configureContextView(view: UIView){
        view.layer.cornerRadius = 15
    }
    

    @IBAction func callButtonPressed(_ sender: UIButton) {
//        let vc = AssignOrderPopupVC(nibName: "AssignOrderPopupVC", bundle: nil)
//        vc.modalPresentationStyle = .overCurrentContext
//        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
    }
}



