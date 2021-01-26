//
//  CanceledOrderListVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class CanceledOrderListVC: UIViewController {
    
    @IBOutlet weak var tabbarView: UIView!
    
    @IBOutlet weak var canceledTowListingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canceledTowListingTableView.dataSource = self
        canceledTowListingTableView.delegate = self
        setupLayouts()
        
    }
    func setupLayouts(){
        configuretabbarShadow(view: tabbarView)
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }

    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
    }    
    
    
}
extension CanceledOrderListVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CanceledTowListingCell
        cell.configureView()
        cell.configureRoundView()
        cell.configureViewShadow()
        cell.configureRoundViewShadow()
        cell.configureBorderLocationView()
        cell.configureBorderDateView()
        cell.configureCellShadow()
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        let vc = self.storyboard?.instantiateViewController(identifier: "QuickOrderDetailVC") as! CanceledOrderDetailVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
    }
    
}
