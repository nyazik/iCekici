//
//  MenuVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 18.01.2021.
//

import UIKit

class MenuVC: UIViewController {
    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayouts()
    }
    
    
    func setupLayouts(){
        configureView(view: roundView)
        configureImage(image: profileImageView)
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = view.frame.height / 2
    }
    
    func configureImage(image: UIImageView){
        image.layer.cornerRadius = image.frame.height / 2
    }
    
    @IBAction func profileButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MyProfileEditVC") as!MyProfileEditVC
        self.dismiss(animated: true) {
            UIApplication.shared.windows.first?.rootViewController = vc
        }
    }
    
    
    @IBAction func comingTowsButtonPressed(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "IncomingOrderVC") as! IncomingOrderVC
//        self.dismiss(animated: true) {
//            UIApplication.shared.windows.first?.rootViewController = vc
//        }
        let vc = self.storyboard?.instantiateViewController(identifier: "IncomingOrderVC") as! IncomingOrderVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func assignedTowsButtonPressed(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "AssignedTowsVC") as! AssignedTowsVC
//        self.dismiss(animated: true) {
//            UIApplication.shared.windows.first?.rootViewController = vc
//        }
        let vc = self.storyboard?.instantiateViewController(identifier: "AssignedTowsVC") as! AssignedTowsVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    

    @IBAction func canceledOrderButtonPressed(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "CanceledOrderListVC") as! CanceledOrderListVC
//        self.dismiss(animated: true) {
//            UIApplication.shared.windows.first?.rootViewController = vc
//        }
        let vc = self.storyboard?.instantiateViewController(identifier: "CanceledOrderListVC") as! CanceledOrderListVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    

    @IBAction func myWalletButtonPressed(_ sender: UIButton) {

//        let vc = self.storyboard?.instantiateViewController(identifier: "MyWalletStatisticsVC") as! MyWalletStatisticsVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
        let vc = self.storyboard?.instantiateViewController(identifier: "MyWalletStatisticsVC") as! MyWalletStatisticsVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func brandsButtonPressed(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "BrandsVC") as! BrandsVC
//        self.dismiss(animated: true) {
//            UIApplication.shared.windows.first?.rootViewController = vc
//        }
        
        
        let vc = self.storyboard?.instantiateViewController(identifier: "BrandsVC") as! BrandsVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    
    }
    
    @IBAction func campaignsButtonPressed(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "CampaignListingVC") as! CampaignListingVC
//        self.dismiss(animated: true) {
//            UIApplication.shared.windows.first?.rootViewController = vc
//        }
        
        
        let vc = self.storyboard?.instantiateViewController(identifier: "CampaignListingVC") as! CampaignListingVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func announcementsButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AnnouncementsVC") as! AnnouncementsVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    
    @IBAction func signOutButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.dismiss(animated: true) {
            UIApplication.shared.windows.first?.rootViewController = vc
        }
    }
    
}
