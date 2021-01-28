//
//  CampaignListingVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 23.01.2021.
//

import UIKit

class CampaignListingVC: UIViewController {

    @IBOutlet weak var campaignsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        campaignsTableView.dataSource = self
        campaignsTableView.delegate = self
       
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
        
    }
    
    
}


extension CampaignListingVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CampaignsCell
        cell.configureView()
        cell.configureShadow()
        return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CampaignsVC") as! CampaignsVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}
