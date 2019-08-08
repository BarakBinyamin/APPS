//
//  ViewController.swift
//  map
//
//  Created by User on 8/7/19.
//  Copyright © 2019 PresentationProductions. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var MapView: MKMapView!
    
    
    let manager = CLLocationManager()
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
        
    {
        
        
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        MapView.setRegion(region, animated: true)
        
        self.MapView.showsUserLocation = true
        
        print("\(myLocation)")
        
        manager.stopUpdatingLocation()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let Xone: Int = Int(48.41)
        //let Yone: Int = Int(48.41)
        
        //var location = CLLocationCoordinate2DMake(( CLLocationDegrees(Xone)), ( CLLocationDegrees(Yone)))
        
        let Location = CLLocationCoordinate2DMake(37.330477889999997
            , -122.02870208)
        
        //var span = MKCoordinateSpanMake(0.02, 0.02)
        
        //var region = MKCoordinateRegion(center: location, span: span)
        
        
        //MapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = Location
        annotation.title = "name "
        annotation.subtitle = "relationship "
        
        MapView.addAnnotation(annotation)
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

