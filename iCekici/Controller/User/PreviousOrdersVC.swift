//
//  PreviousOrdersVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 19.01.2021.
//

import UIKit

class PreviousOrdersVC: UIViewController {

    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var newOrderTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newOrderTableView.dataSource = self
        newOrderTableView.delegate = self
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
        dismiss(animated: false, completion: nil)
    }
    
    
    
}

extension PreviousOrdersVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PreviousOrdersCell
        cell.configureView()
        cell.configureBorder()
        cell.configureShadow()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "PreviousOrderDetailVC") as! PreviousOrderDetailVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}
