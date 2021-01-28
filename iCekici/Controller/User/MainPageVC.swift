//
//  MainPageVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 24.01.2021.
//

import UIKit

class MainPageVC: UIViewController {
    
    
    @IBOutlet weak var tabbarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func setupLayouts(){
        configureTabbarView(view: tabbarView)
    }
    
    func configureTabbarView(view: UIView){
        view.addShadow(color: .lightGray, opacity: 0.5)

//        view.addShadow(color: .lightGray, opacity: 1.0)
//        view.layer.cornerRadius = view.frame.size.height / 2
    }

    
    @IBAction func createNewOrderButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CreatingOrderSearchVC") as! CreatingOrderSearchVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func previousOrdersButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "PreviousOrdersVC") as! PreviousOrdersVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func filteringButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "FilteringVC") as! FilteringVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func profileButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "UserProfileVC") as! UserProfileVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
        
    }
    
    
    @IBAction func profileTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "UserProfileVC") as! UserProfileVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
        
    }
    
    
    @IBAction func searchTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CreatingOrderSearchVC") as! CreatingOrderSearchVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func createNewOrderTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CreatingOrderVC") as! CreatingOrderVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    

}

