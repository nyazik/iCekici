//
//  UserHomePageVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 20.01.2021.
//

import UIKit
import SideMenu

class UserProfileVC: UIViewController {

    @IBOutlet weak var towCollectionView: UICollectionView!
    @IBOutlet weak var tabbarView: UIView!
    @IBOutlet weak var navigationView: UIView!
    
    let images = [UIImage(named: "ic_editProfile"), UIImage(named: "ic_homeUnselected"),  UIImage(named: "ic_truck"), UIImage(named: "is_tracks")]
    let labelNames = ["Profilimi Düzenle", "Adreslerimi Görüntüle", "Geçmiş Siparişlerimi Listele", "Hakkımızda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        towCollectionView.dataSource = self
        towCollectionView.delegate = self
    }
  
   
    
    
    func setupLayouts(){
        configureTabbarView(view: tabbarView)
        configuretabbarShadow(view: navigationView)
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    func configureTabbarView(view: UIView){
        view.addShadow(color: .lightGray, opacity: 0.5)

        //view.addShadow(color: , opacity: 1.0)
//        view.layer.cornerRadius = view.frame.size.height / 2
    }
    
    
    @IBAction func HomePageTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "MainPageVC") as! MainPageVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
    @IBAction func searchTabbarButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CreatingOrderSearchVC") as! CreatingOrderSearchVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
}


extension UserProfileVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! UserProfileCell
        cell.configureView()
        cell.configuretabbarShadow()
        let image = images[indexPath.item]
        cell.towImageView.image = image
        cell.towNameLabel.text = labelNames[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 250)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            let vc = self.storyboard?.instantiateViewController(identifier: "EditProfileVC") as! EditProfileVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 1{
            let vc = self.storyboard?.instantiateViewController(identifier: "MyAddressesVC") as! MyAddressesVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 2{
            let vc = self.storyboard?.instantiateViewController(identifier: "PreviousOrdersVC") as! PreviousOrdersVC
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }else if indexPath.item == 3{
            
        }
    }
    
}


