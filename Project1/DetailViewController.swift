//
//  DetailViewController.swift
//  Project1
//
//  Created by Will Kembel on 3/24/24.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImageName: String? // image to load when selected
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImageName ?? "no image"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoadName = selectedImageName {
            let imageToLoad = UIImage(named: imageToLoadName)
            imageView.image = imageToLoad
        }
    }
    
    // tap for fullscreen
    //
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    // remove tap for fullscreen when returning to image selection
    //
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
}
