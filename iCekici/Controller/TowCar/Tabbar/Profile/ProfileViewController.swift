//
//  ProfileViewController.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit
import SideMenu
class ProfileViewController: UIViewController {

    
    @IBOutlet weak var profileCollectionView: UICollectionView!
    @IBOutlet weak var tabbarView: UIView!
    @IBOutlet weak var navigationView: UIView!

    let images = [UIImage(named: "ic_person"), UIImage(named: "ic_wallet"),  UIImage(named: "Ic_plus"), UIImage(named: "ic_about") ]
    
    let labelNames = ["Profilimi Düzenle", "Ödemelerim", "Arkadaşlarını Davet Et", "Hakkımızda"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileCollectionView.dataSource = self
        profileCollectionView.delegate = self
        setupLayouts()
        setupSideMenu()
    }
    
    func setupLayouts(){
        configureTabbarView(view: tabbarView)
        configuretabbarShadow(view: navigationView)
    }
    
    func configureTabbarView(view: UIView){
        view.addShadow(color: .lightGray, opacity: 1.0)
        view.layer.cornerRadius = view.frame.size.height / 2
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
   
    
    private func setupSideMenu() {
        // Define menus
        SideMenuManager.default.leftMenuNavigationController = storyboard?.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? SideMenuNavigationController
        settingsSetupSlide()
    }
    
    
    //menuDissolveIn
    func settingsSetupSlide() {
        // Enable gestures
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: view, forMenu: .left)
        var settings = SideMenuSettings()
        //var settings2 = MenuViewController()
        settings.blurEffectStyle = .light
        settings.presentationStyle = .menuSlideIn
        settings.pushStyle = .preserveAndHideBackButton
        settings.statusBarEndAlpha = 0
//        settings.presentationStyle.backgroundColor = UIColor.blue
        settings.presentationStyle.presentingEndAlpha = 0.7
        settings.presentationStyle.onTopShadowOpacity = 0.5
        settings.menuWidth = self.view.frame.width - self.view.frame.width * 0.3
//        settings.presentationStyle.backgroundColor = UIColor.green
//        settings2.presentationStyle.backgroundColor = UIColor.green
        //settings2.presentationStyle.presentingEndAlpha = 0.0
        SideMenuManager.default.leftMenuNavigationController?.settings = settings
//        SideMenuManager.default.menuAnimationBackgroundColor = UIColor.clear
        SideMenuPresentationStyle.menuSlideIn.backgroundColor = UIColor.yellow
    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        let menu = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! SideMenuNavigationController
        settingsSetupSlide()
        present(menu, animated: true, completion: nil)
    }
    
    @IBAction func incomingOrdersTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "IncomingOrderVC") as! IncomingOrderVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    
    @IBAction func notificationTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "NotificationVC") as! NotificationVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func searchTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SearchTowVC") as! SearchTowVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    

}

extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 250)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProfileCell
        cell.configureView()
        let image = images[indexPath.item]
        cell.profileMeneImageView.image = image
        cell.profileMenuNameLabel.text = labelNames[indexPath.item]
        cell.configureRoundViewShadow()
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        if indexPath.item == 0{
            let vc = self.storyboard?.instantiateViewController(identifier: "MyProfileEditVC") as! MyProfileEditVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 1{
            let vc = self.storyboard?.instantiateViewController(identifier: "MyWalletStatisticsVC") as! MyWalletStatisticsVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 2{
            let vc = self.storyboard?.instantiateViewController(identifier: "InviteFriendsVC") as! InviteFriendsVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 3{
            let vc = self.storyboard?.instantiateViewController(identifier: "AboutPageViewController") as! AboutPageViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
            
        }
        
    }

    
}
