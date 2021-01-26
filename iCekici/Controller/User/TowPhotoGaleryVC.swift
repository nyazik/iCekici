//
//  TowPhotoGaleryVC.swift
//  iCekici
//
//  Created by Nazik on 26.01.2021.
//

import UIKit

class TowPhotoGaleryVC: UIViewController {

    
    @IBOutlet weak var towPhotoGaleryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        towPhotoGaleryCollectionView.dataSource = self
        towPhotoGaleryCollectionView.delegate = self
    }
    

  
}

extension TowPhotoGaleryVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TowGaleryCell
        cell.configureView()
        cell.configureBorderView()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 150)
    }
    
}
