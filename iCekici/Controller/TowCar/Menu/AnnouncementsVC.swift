//
//  AnnouncementsVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 26.01.2021.
//

import UIKit

class AnnouncementsVC: UIViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var announcementsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        announcementsTableView.delegate = self
        announcementsTableView.dataSource = self
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
    
    
}

extension AnnouncementsVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AnnouncementsCell
        cell.configureShadow()
        cell.configureBorderView()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AnnouncementDetailVC") as! AnnouncementDetailVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}
