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
    
    private var images = [PHAsset]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populatePhotos()
    }
    
    
    private func populatePhotos() {
        PHPhotoLibrary.requestAuthorization() { [weak self] status in
            
            if status == .authorized {
                // access the photos from photo libary
                let assets = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: nil)
                
                assets.enumerateObjects { (object, count, stop) in
                    self?.images.append(object)
                }
                
                self?.images.reverse()
                //self?.collectionView.reloadData()
            } else {
                
            }
            
        }
    }
}
