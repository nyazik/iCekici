//
//  TowProfileInfoVC.swift
//  iCekici
//
//  Created by Nazik on 27.01.2021.
//

import UIKit

class TowProfileInfoVC: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var deleteTow: UIButton!
    @IBOutlet weak var towNameView: UIView!
    @IBOutlet weak var towPlaqueView: UIView!
    @IBOutlet weak var towBrandView: UIView!
    @IBOutlet weak var towModelView: UIView!
    @IBOutlet weak var towYearView: UIView!
    @IBOutlet weak var towColorView: UIView!
    @IBOutlet weak var towWorkingHoursBorderView: UIView!
    @IBOutlet weak var towHourlyPriceBorderView: UIView!
    @IBOutlet weak var towwDescriptionBorderView: UIView!
 
    
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
        configureView(view: towNameView)
        configureView(view: towWorkingHoursBorderView)
        configureView(view: towHourlyPriceBorderView)
        configureView(view: towwDescriptionBorderView)
        configureCornerRadius(view: saveButton)
        configureCornerRadius(view: deleteTow)


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


    @IBAction func deleteTowButtonPressed(_ sender: UIButton) {
        let vc = DeleteTowVC(nibName: "DeleteTowVC", bundle: nil)
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: false, completion: nil)
    }
    
}
