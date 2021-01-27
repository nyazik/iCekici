//
//  MyAddressesVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 20.01.2021.
//

import UIKit

class MyAddressesVC: UIViewController {

    
    @IBOutlet weak var navigationView: UIView!
    
    @IBOutlet weak var myAddressesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myAddressesTableView.dataSource = self
        myAddressesTableView.delegate = self
        setupLayouts()

    }
    
    func setupLayouts(){
        configureShadow(view: navigationView)
    }
    
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
  
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func addAddressBuutonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SetLocationDestinationVC") as! SetLocationDestinationVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
        
    }
    

}

extension MyAddressesVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyAddressedCell
        cell.configureView()
        cell.configureShadow()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SetLocationDestinationVC") as! SetLocationDestinationVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}
