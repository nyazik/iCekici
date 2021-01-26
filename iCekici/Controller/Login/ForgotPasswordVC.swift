//
//  ForgotPasswordVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 15.01.2021.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var emailBorderView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }
    
    func setupLayouts(){
        configureView(view: centerView)
        configureShadow(view: centerView)
        configureButton(button: forgotPasswordButton)
        configureBorderView(view: emailBorderView)
    }
    
    func configureBorderView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius = 15
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
    
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
}
