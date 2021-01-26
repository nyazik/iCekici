//
//  BrandsVC.swift
//  iCekici
//
//  Created by Nazik on 22.01.2021.
//

import UIKit

class BrandsVC: UIViewController {

    @IBOutlet weak var brandsCollectionView: UICollectionView!
    @IBOutlet weak var navigationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        brandsCollectionView.dataSource = self
        brandsCollectionView.delegate = self
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
//        let vc = self.storyboard?.instantiateViewController(identifier: "HomePageVC") as! HomePageVC
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false, completion: nil)
        dismiss(animated: false, completion: nil)
    }
    
    
   

}
extension BrandsVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BrandsCell
        cell.configureView()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 200)
    }
    
}
