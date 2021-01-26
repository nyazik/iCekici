//
//  LocationViewVC.swift
//  iCekici
//
//  Created by Nazik on 27.01.2021.
//

import UIKit
import MapKit

class LocationViewVC: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.layer.cornerRadius = 15
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
