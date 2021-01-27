//
//  InviteFriendsVC.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit

class InviteFriendsVC: UIViewController {
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var faceBookView: UIView!
    @IBOutlet weak var twitterView: UIView!
    @IBOutlet weak var whatsupView: UIView!
    @IBOutlet weak var telegramView: UIView!
    @IBOutlet weak var inviteLinkView: UIView!
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()

        
    }
    
    
    func setupLayouts(){
        configureView(view: faceBookView)
        configureView(view: twitterView)
        configureView(view: whatsupView)
        configureView(view: telegramView)
        configureShadow(view: navigationView)
        configureShadow(view: faceBookView)
        configureView(view: twitterView)
        configureView(view: whatsupView)
        configureView(view: telegramView)
        configureView(view: inviteLinkView)
        configureShadow(view: inviteLinkView)
        configureView(view: shareButton)
    }
    
    func configureShadow(view: UIView){
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
