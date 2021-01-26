//
//  SearchTowVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 18.01.2021.
//

import UIKit
import SideMenu

class SearchTowVC: UIViewController {

    
    @IBOutlet weak var searchTowTableView: UITableView!
    @IBOutlet weak var tabbarView: UIView!
    @IBOutlet weak var navigationBarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTowTableView.dataSource = self
        searchTowTableView.delegate = self
        
        hideKeyboardWhenTappedAround()
        setupLayouts()
        setupSideMenu()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        addKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        removeKeyboardObserver()
    }
    
    func setupLayouts(){
        configureTabbarView(view: tabbarView)
        configureNavigationShadow(view: navigationBarView)
    }
    
    func configureNavigationShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }

    func configureTabbarView(view: UIView){
        view.addShadow(color: .lightGray, opacity: 1.0)
        view.layer.cornerRadius = view.frame.height / 2
    }
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func notificationButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "NotificationVC") as! NotificationVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)

    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        let menu = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! SideMenuNavigationController
        settingsSetupSlide()
        present(menu, animated: true, completion: nil)
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
        settings.blurEffectStyle = .light
        settings.presentationStyle = .menuSlideIn
        settings.pushStyle = .preserveAndHideBackButton
        settings.statusBarEndAlpha = 0
        settings.presentationStyle.presentingEndAlpha = 0.7
        settings.presentationStyle.onTopShadowOpacity = 0.5
        settings.menuWidth = self.view.frame.width - self.view.frame.width * 0.3
        SideMenuManager.default.leftMenuNavigationController?.settings = settings
        SideMenuPresentationStyle.menuSlideIn.backgroundColor = UIColor.yellow
    }
    
    

}

extension SearchTowVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchTowCell
        cell.configureView()
        cell.configureBorderView()
        cell.configureCellShadow()
        cell.configureRoundView()
        cell.configureRoundViewShadow()
        cell.configureViewShadow()
        return cell
    }
    
    
}
