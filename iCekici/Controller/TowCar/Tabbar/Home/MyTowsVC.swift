//
//  MyTowsVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 17.01.2021.
//

import UIKit

class MyTowsVC: UIViewController {
    
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var towAddingTableView: UITableView!
    @IBOutlet weak var addTowView: UIView!
    
    @IBOutlet weak var roundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        towAddingTableView.delegate = self
        towAddingTableView.dataSource = self
        setupLayouts()
    }
    
    func setupLayouts(){
        configureView(view: addTowView)
        configureView(view: roundView)
        configureViewShadow(view: addTowView)
        configureViewShadow(view: roundView)
        configureShadow(view: navigationView)
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }

    
    func configureView(view: UIView){
        view.layer.cornerRadius = view.frame.size.height / 2
    }
    func configureViewShadow(view: UIView){
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func addTowButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AddTowVC") as! AddTowVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}


extension MyTowsVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AllMyTowsCell
        cell.configureView()
        cell.configureRoundView()
        cell.configureViewShadow()
        cell.configureRoundViewShadow()
        cell.configureBorderView()
        cell.configureCellShadow()
        return cell
    }
    
    
}
