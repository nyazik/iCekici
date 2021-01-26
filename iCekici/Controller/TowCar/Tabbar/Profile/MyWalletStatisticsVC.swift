//
//  MyWalletStatisticsVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit
import iOSDropDown

class MyWalletStatisticsVC: UIViewController {
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var purchasesTableView: UITableView!
    @IBOutlet weak var balanceBorderView: UIView!
    @IBOutlet weak var monthsDropDown: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
        setupLayouts()
        purchasesTableView.dataSource = self
        purchasesTableView.delegate = self
        
    }
    
    func setupLayouts() {
        configureView(view: monthsDropDown)
        configureShadow(view: monthsDropDown)
        configureDropDown(dropDown: monthsDropDown)
        configureBorderView(view: balanceBorderView)
        configureShadow(view: navigationView)
        monthsDropDown.setLeftPaddingPoints(20)
    }
    
    
    func configureBorderView(view: UIView) {
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
    func configureView(view: UIView) {
        view.layer.cornerRadius = 10
    }
    
    func congifureBorderView(view: UIView) {
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.backgroundColor = UIColor.white.cgColor
        
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureDropDown(dropDown: DropDown) {
        
        dropDown.optionArray = ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"]
        
        dropDown.didSelect{(selectedText , index ,id) in
            print("Selected String: \(selectedText) \n index: \(index)")
        }
        
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
        
        self.dismiss(animated: false, completion: nil)
    }
    
    
}


extension MyWalletStatisticsVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PurchasesCell
        cell.configureView()
        cell.configureCellShadow()
        return cell
    }
    
    
    
    
    
}
