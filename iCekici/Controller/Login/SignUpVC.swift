//
//  SignUpVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 14.01.2021.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var nameSurnameBorderView: UIView!
    @IBOutlet weak var emailBorderView: UIView!
    @IBOutlet weak var phoneNumberView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var confirmPassword: UIView!
    @IBOutlet weak var checkmarkButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var nameSurnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    var unchecked = true
    
    var textFields: [UITextField] {
        return [nameSurnameTextField, emailTextField, phoneNumberTextField, passwordTextField, confirmPasswordTextField]
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
        //configureView(view: userNameBorderView)
        configureView(view: nameSurnameBorderView)
        configureView(view: emailBorderView)
        configureView(view: phoneNumberView)
        configureView(view: passwordView)
        configureView(view: confirmPassword)
        configureCornerRadiusView(view: contentView)
        configuretabbarShadow()
        configureButton(button: signInButton)
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius = 15
    }
    
    func configuretabbarShadow(){
        contentView.backgroundColor = UIColor.white
        contentView.layer.shadowColor = UIColor.lightGray.cgColor
        contentView.layer.shadowOpacity = 0.5
        contentView.layer.shadowOffset = CGSize.zero
        contentView.layer.shadowRadius = 5
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func configureCornerRadiusView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    
    
    @IBAction func checkmarkButtonPressed(_ sender: UIButton) {
        if checkmarkButton.isSelected {
            checkmarkButton.isSelected = false
        }
        else {
            checkmarkButton.isSelected = true
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    
}

extension SignUpVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let selectedTextFieldIndex = textFields.firstIndex(of: textField), selectedTextFieldIndex < textFields.count - 1 {
            textFields[selectedTextFieldIndex + 1].becomeFirstResponder()
        } else {
            textField.resignFirstResponder() // last textfield, dismiss keyboard directly
        }
        return true
    }
}


