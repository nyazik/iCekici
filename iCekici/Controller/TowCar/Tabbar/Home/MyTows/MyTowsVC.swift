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
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchTapped(_:)))
        addTowView.addGestureRecognizer(tap)

        
    }
    
    @objc func touchTapped(_ sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AddTowVC") as! AddTowVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
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
//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
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
    
    @objc func seeLocation(_ sender: UITapGestureRecognizer){
        let vc = self.storyboard?.instantiateViewController(identifier: "ChooseFromMapVC") as! ChooseFromMapVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AllMyTowsCell
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (self.seeLocation(_:)))
            cell.seeLocationView.addGestureRecognizer(tapGesture)
        cell.configureView()
        cell.configureRoundView()
        cell.configureViewShadow()
        cell.configureRoundViewShadow()
        cell.configureBorderView()
        cell.configureCellShadow()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "TowProfileVC") as! TowProfileVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}
