//
//  ViewController.swift
//  imagepicker
//
//  Created by R93 on 07/02/23.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addImageactionButton(_ sender: Any) {
        showalert()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[.originalImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    
    func showalert()
    {
        let alert = UIAlertController(title: "Your choise", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler: { _ in
            self.openGallery()
        }))
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: nil))
        present(alert,animated: true,completion: nil)
    }
    func openGallery()
    {
     let gallery = UIImagePickerController()
       gallery.delegate = self
      gallery.sourceType = .photoLibrary
        present(gallery,animated: true,completion: nil)
    }
    
}


