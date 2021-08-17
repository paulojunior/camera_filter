//
//  PhotosCollectionViewController.swift
//  CameraFilter
//
//  Created by Junior Ferreira on 17/08/21.
//

import Foundation
import UIKit
import Photos


class PhotosCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populatePhotos()
    }
    
    
    private func populatePhotos() {
        PHPhotoLibrary.requestAuthorization() { status in
            
            if status == .authorized {
                
                // access the photos from photo libary
                
            } else {
                
            }
            
        }
    }
}
