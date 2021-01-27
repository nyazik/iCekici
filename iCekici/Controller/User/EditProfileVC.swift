//
//  ViewController.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 14.01.2021.
//

import UIKit

class EditProfileVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var addressTextView: UITextView!
    @IBOutlet weak var nameSurnameBorderView: UIView!
    @IBOutlet weak var emailBorderView: UIView!
    @IBOutlet weak var passwordBorderView: UIView!
    @IBOutlet weak var addressBorderView: UIView!
    @IBOutlet weak var setLocationBorderView: UIView!
    @IBOutlet weak var nameSurnameCellView: UIView!
    @IBOutlet weak var emailCellView: UIView!
    @IBOutlet weak var passwordCellView: UIView!
    @IBOutlet weak var addressCellView: UIView!
    @IBOutlet weak var setLocationCellView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    
    
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
        configureView(view: nameSurnameBorderView)
        configureView(view: emailBorderView)
        configureView(view: passwordBorderView)
        configureView(view: addressBorderView)
        configureView(view: setLocationBorderView)
        configureButton(button: saveButton)
        configuretabbarShadow(view: navigationView)
        addressTextView.delegate = self
        addressTextView.text = "Adresinizi Giriniz"
        addressTextView.textColor = UIColor.lightGray
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius = 15
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 10
        view.backgroundColor = .clear
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
    }
    

    @IBAction func backButtonPRessed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}

extension EditProfileVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileDetailCell
        cell.configureView()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}


extension EditProfileVC  : UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text  = "Adresinizi Giriniz"
            textView.textColor = UIColor.lightGray
        }
    }
}
