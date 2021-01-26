//
//  AddTowVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 18.01.2021.
//

import UIKit

class AddTowVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var towDescriptionTextView: UITextView!
    @IBOutlet weak var addPhotoView: UIView!
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var towNameBorderView: UIView!
    @IBOutlet weak var towPlaqueBorderView: UIView!
    @IBOutlet weak var towBrandBorderView: UIView!
    @IBOutlet weak var towModelBorderView: UIView!
    @IBOutlet weak var towYearBorderView: UIView!
    @IBOutlet weak var towColorBorderView: UIView!
    @IBOutlet weak var towWorkingHoursBorderView: UIView!
    @IBOutlet weak var towHourlyPriceBorderView: UIView!
    @IBOutlet weak var saveButtonPressed: UIButton!
    @IBOutlet weak var towwDescriptionBorderView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        hideKeyboardWhenTappedAround()
        towDescriptionTextView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }
    
    func setupLayouts(){
        configureView(view: towNameBorderView)
        configureView(view: towPlaqueBorderView)
        configureView(view: towBrandBorderView)
        configureView(view: towModelBorderView)
        configureView(view: towYearBorderView)
        configureView(view: towColorBorderView)
        configureView(view: towWorkingHoursBorderView)
        configureView(view: towHourlyPriceBorderView)
        configureView(view: towwDescriptionBorderView)
        configureRoundView(view: addPhotoView)
        configureRoundView(view: roundView)
        configureShadow(view: roundView)
        configureShadow(view: navigationView)
        configureRadiusView(view: saveButtonPressed)
        towDescriptionTextView.text = "Çekici Açıklamasını Giriniz"
        towDescriptionTextView.textColor = UIColor.lightGray
    }

    func configureShadow(view: UIView){
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
    func configureRoundView(view: UIView){
        view.layer.cornerRadius = view.frame.height / 2
    }
    
    func configureRadiusView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    @IBAction func backButtonPresssed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
//        let vc = self.storyboard?.instantiateViewController(identifier: "AddPhotoVC") as! AddPhotoVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func addPhotoButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AddMultiplePhotoVC") as! AddMultiplePhotoVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}

extension AddTowVC  : UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Çekici Açıklamasını Giriniz"
            textView.textColor = UIColor.lightGray
        }
    }
}

