//
//  CreatingOrderSearchVC.swift
//  iCekici
//
//  Created by Nazik on 24.01.2021.
//

import UIKit

class CreatingOrderSearchVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var filteringView: UIView!
    @IBOutlet weak var createOrderTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createOrderTableView.dataSource = self
        createOrderTableView.delegate = self
        setupLayouts()
    }
    
    func setupLayouts() {
        hideKeyboardWhenTappedAround()
        configureView(view: filteringView)
        configureShadowView(view: filteringView)
        configureShadow(view: navigationView)
    }
   
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureView(view: UIView) {
        view.layer.cornerRadius = 15
        
    }
    
    func configureShadowView(view: UIView) {
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func filteringButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "FilteringVC") as! FilteringVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}


extension CreatingOrderSearchVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrderCell
        cell.configureView()
        cell.configureCellShadow()
        cell.configureButton()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "TowProfileVC") as! TowProfileVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}
