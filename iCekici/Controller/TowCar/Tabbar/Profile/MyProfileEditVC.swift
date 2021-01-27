//
//  MyProfileEditVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 18.01.2021.
//

import UIKit

class MyProfileEditVC: UIViewController {
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var nameLabelView: UIView!
    @IBOutlet weak var emailLabelView: UIView!
    @IBOutlet weak var passwordLabelView: UIView!
    @IBOutlet weak var phoneLabelView: UIView!
    @IBOutlet weak var addressLabelView: UIView!
    @IBOutlet weak var invoiceAddressLabelView: UIView!
    @IBOutlet weak var companysTitleLabelView: UIView!
    @IBOutlet weak var ibanLabelView: UIView!
    @IBOutlet weak var invoiceAddressTextView: UITextView!
    @IBOutlet weak var addressTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setupLayouts()
        addressTextView.delegate = self
        invoiceAddressTextView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }

    func setupLayouts(){
        configureView(view: nameLabelView)
        configureView(view: nameLabelView)
        configureView(view: emailLabelView)
        configureView(view: passwordLabelView)
        configureView(view: phoneLabelView)
        configureView(view: addressLabelView)
        configureView(view: invoiceAddressLabelView)
        configureView(view: companysTitleLabelView)
        configureView(view: ibanLabelView)
        configureButton(button: saveButton)
        configureShadow(view: navigationView)
        addressTextView.text = "Adres Giriniz"
        addressTextView.textColor = UIColor.lightGray
        invoiceAddressTextView.text = "Fatura Adresi Giriniz"
        invoiceAddressTextView.textColor = UIColor.lightGray
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius = 15
    }
    
    func configureView(view: UIView){
            view.layer.borderColor = UIColor.lightGray.cgColor
            view.layer.borderWidth = 1
            view.backgroundColor = UIColor.clear
            view.layer.cornerRadius = 15
        
    }
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
    }
    
    
}


extension MyProfileEditVC: UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            if textView == addressTextView{
                textView.text = "Adresinizi Giriniz"
            }else if textView == invoiceAddressTextView{
                textView.text = "Fatura Adresinizi Giriniz"
            }
            textView.textColor = UIColor.lightGray
        }
    }
    
}
