//
//  DeleteTowVC.swift
//  iCekici
//
//  Created by Nazik on 27.01.2021.
//

import UIKit

class DeleteTowVC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var cancelView: UIView!
    @IBOutlet weak var deleteView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        backgroundView.addGestureRecognizer(tap)
        cancelView.addGestureRecognizer(tap2)
        deleteView.addGestureRecognizer(tap3)
        configuretabbarShadow(view: cellView)
        configuretabbarShadow(view: deleteView)

        
        }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        dismiss(animated: false, completion: nil)
    }

    func configuretabbarShadow(view: UIView){
//        cellView.backgroundColor = UIColor.white
        view
            .layer.shadowColor = UIColor.lightGray.cgColor
        view
            .layer.shadowOpacity = 0.5
        view
            .layer.shadowOffset = CGSize.zero
        view
            .layer.shadowRadius = 5
        view
            .layer.cornerRadius = 15

    }
    
    
  
}
