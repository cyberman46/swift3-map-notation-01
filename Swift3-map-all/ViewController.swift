//
//  ViewController.swift
//  Swift3-map-all
//
//  Created by Akekapon Suebprom on 20/9/59.
//  Copyright © พ.ศ. 2559 kratostracking. All rights reserved.
//

import UIKit
import MapKit // 2

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView! // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadMap()
            }
    
    func loadMap(){
        let latDelta:CLLocationDegrees = 0.05
        let lonDelta:CLLocationDegrees = 0.05
        
        let lat:CLLocationDegrees = 13.664558
        let lon:CLLocationDegrees = 100.495095
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let regin:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(regin, animated: true)
        
        let anota = MKPointAnnotation() // add anotation on map
        anota.title = "Hello"
        anota.subtitle = "It, anotation here"
        
        anota.coordinate = location
        
        map.addAnnotation(anota)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

