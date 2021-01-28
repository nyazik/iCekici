//
//  HomePageVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 15.01.2021.
//

import UIKit
import SideMenu


class HomePageVC: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var tabbarView: UIView!
    @IBOutlet weak var navigationView: UIView!
    
    let images = [UIImage(named: "ic_truck"), UIImage(named: "ic_assignedTow"),  UIImage(named: "ic_cancelOrder"), UIImage(named: "is_tracks") ]
    let labelNames = ["Gelen Siparişleri Listele", "Atanmış Siparişleri Listele", "İptal Siparişleri Listele", "Tüm Çekicilerimi Listele"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
        setupLayouts()
        setupSideMenu()
    }
    

    func setupLayouts(){
        configureTabbarView(view: tabbarView)
        configuretabbarShadow(view: navigationView)
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureTabbarView(view: UIView){
        view.addShadow(color: .lightGray, opacity: 0.5)
    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        let menu = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! SideMenuNavigationController
        settingsSetupSlide()
        present(menu, animated: true, completion: nil)
    }
    
    
    @IBAction func searchTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SearchTowVC") as! SearchTowVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
       
    }
    
    
    @IBAction func profileTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
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
        SideMenuManager.default.leftMenuNavigationController?.settings = settings
        SideMenuPresentationStyle.menuSlideIn.backgroundColor = UIColor.yellow
    }
    
    
}

extension HomePageVC: UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! TowCarMenuCell
        cell.configureView()
        cell.configuretabbarShadow()
        let image = images[indexPath.item]
        cell.towImageView.image = image
        cell.towNameLabel.text = labelNames[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 250)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        if indexPath.item == 0{
            let vc = self.storyboard?.instantiateViewController(identifier: "IncomingOrderVC") as! IncomingOrderVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)

        }else if indexPath.item == 1{
                let vc = self.storyboard?.instantiateViewController(identifier: "AssignedTowsVC") as! AssignedTowsVC
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: false, completion: nil)
                
        }else if indexPath.item == 2{
            let vc = self.storyboard?.instantiateViewController(identifier: "CanceledOrderListVC") as! CanceledOrderListVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 3{
            let vc = self.storyboard?.instantiateViewController(identifier: "MyTowsVC") as! MyTowsVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }
        
    }
    
    
}

