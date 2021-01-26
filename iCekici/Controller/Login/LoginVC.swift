//
//  LoginVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 14.01.2021.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailBorderVew: UIView!
    @IBOutlet weak var passwordBorderView: UIView!
    
    @IBOutlet weak var containerView: UIView!
    
    var textFields: [UITextField] {
        return [emailTextField, passwordTextField]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        hideKeyboardWhenTappedAround()
        textFields.forEach {$0.delegate = self}
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }
    
    func setupLayouts(){
        configureView(view: roundView)
        configureButton(button: signInButton)
        configureBorderView(view: emailBorderVew)
        configureBorderView(view: passwordBorderView)
        configureCornerRadiusView(view: containerView)
        configureShadow(view: containerView)
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
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
        view.layer.cornerRadius = view.frame.size.height / 2
    }
    
    func configureCornerRadiusView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SignUpVC") as! SignUpVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ForgotPasswordVC") as! ForgotPasswordVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    
    
}


extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let selectedTextFieldIndex = textFields.firstIndex(of: textField), selectedTextFieldIndex < textFields.count - 1 {
            textFields[selectedTextFieldIndex + 1].becomeFirstResponder()
        } else {
            textField.resignFirstResponder() // last textfield, dismiss keyboard directly
        }
        return true
    }
}
