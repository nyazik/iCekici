//
//  IncomingOrderVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 15.01.2021.
//

import UIKit

class IncomingOrderVC: UIViewController {

    @IBOutlet weak var towListingTableView: UITableView!
    @IBOutlet weak var navigationView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //DELEGATES
        towListingTableView.dataSource = self
        towListingTableView.delegate = self
        setupLayouts()

        
    }
    
    
  
    
    
    
    func setupLayouts(){
        configureShadow(view: navigationView)
    }
    func configureShadow(view: UIView){
//        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
  
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
        dismiss(animated: false, completion: nil)
        
    }
    

}

extension IncomingOrderVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TowListingCell
        cell.configureView()
        cell.configureBorderLocationView()
        cell.configureBorderDateView()
        cell.configureCellShadow()
        cell.configureRoundView()
        cell.configureRefuseViewShadow()
        cell.configureSendViewShadow()
        cell.configureAssignSendViewViewShadow()
        cell.configureAssignViewShadow()
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DetailPageVC") as! DetailPageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)

    }
    
}
