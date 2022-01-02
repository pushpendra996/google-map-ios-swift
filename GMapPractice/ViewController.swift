//
//  ViewController.swift
//  GMapPractice
//
//  Created by user176911 on 6/5/21.
//
import CoreLocation
import UIKit
import GoogleMaps

class ViewController: UIViewController {
    @IBOutlet weak var google_map: GMSMapView!

    //@IBOutlet weak var GMv: google_map!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let camera = GMSCameraPosition.camera(withLatitude: 28.7041, longitude: 77.1025, zoom: 6.0)
        google_map.camera = camera
        self.show_marker(position: google_map.camera.target)
    }

    func show_marker(position : CLLocationCoordinate2D){
        let marker = GMSMarker()
        marker.position = position
        marker.title = "Delhi"
        marker.snippet = "Capital of India"
        marker.map = google_map
        
        
    }
    
}
