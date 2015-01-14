//
//  ViewController.swift
//  PhotoInfo
//
//  Created by MATSUNAGAMASAFUMI on 2015/01/14.
//  Copyright (c) 2015年 MATSUNAGAMASAFUMI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

  @IBOutlet weak var mainImageView: UIImageView!
  var picker:UIImagePickerController?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    picker = UIImagePickerController()
    picker?.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func openAlbum(sender: UIBarButtonItem) {
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
      picker?.sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum
      self.presentViewController(picker!, animated: true, completion: nil)
    }
  }
  @IBAction func launchCamera(sender: UIBarButtonItem) {
  }
  
  

}

