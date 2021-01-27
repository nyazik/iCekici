//
//  ProfilePhotoGaleryVC.swift
//  iCekici
//
//  Created by Nazik on 27.01.2021.
//

import UIKit

class ProfilePhotoGaleryVC: UIViewController {
    
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var towPhotoCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        towPhotoCollectionView.dataSource = self
        towPhotoCollectionView.delegate = self
        setupLayouts()
        configuretabbarShadow(view: tabView)
    }
    
    func setupLayouts(){
        configureView(view: addPhotoButton)
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 10
    }
    
    func configuretabbarShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
    }
    
    @IBAction func addPhoroButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "AddMultiplePhotoVC") as! AddMultiplePhotoVC
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    
    }
    
}

extension ProfilePhotoGaleryVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TowProfileGaleryCell
        cell.configureBorderView()
        cell.configureView()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 150)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = EnlargedPhotoVC(nibName: "EnlargedPhotoVC", bundle: nil)
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: false, completion: nil)
    }
}
