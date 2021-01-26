//
//  FilteringVC.swift
//  iCekici
//
//  Created by Wookweb Creative Agency on 19.01.2021.
//

import UIKit

class FilteringVC: UIViewController {
    
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var collectionViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var filteringOptionView: UIView!
    @IBOutlet weak var secondFilteringOptionView: UIView!
    @IBOutlet weak var filteringButton: UIButton!
    
        override func viewDidLayoutSubviews() {
            collectionViewHeightConstraint.constant = CGFloat.greatestFiniteMagnitude
            self.categoriesCollectionView.reloadData()
            collectionViewHeightConstraint.constant = self.categoriesCollectionView.contentSize.height
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
    }
    
    func setupLayouts(){
        configureView(view: filteringOptionView)
        configureView(view: secondFilteringOptionView)
        configureButton(button: filteringButton)
        configureNavigationviewShadow(view:navigationView)
        configureShadow(view: filteringOptionView)
        configureShadow(view: secondFilteringOptionView)
    }
    
    func configureNavigationviewShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 3
    }
    
    func configureShadow(view: UIView){
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 3
    }
    
    func configureButton(button: UIButton){
        button.layer.cornerRadius =  15
    }
    
    func configureView(view: UIView){
        view.layer.cornerRadius = 15
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func filteringButtonPressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    
    
    
}


extension FilteringVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoriesCell
        cell.configureView()
        cell.configureShadow()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        var width = (screenWidth-30)/2
        width = width > 190 ? 190 : width
        return CGSize.init(width: width, height: 60)
    }
    
    
}
