//
//  MyDetailViewController.swift
//  DogParksOfBayArea
//
//  Created by David Gudeman on 10/19/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {

  @IBOutlet var myDetailViewTopTextView: UITextView!
  @IBOutlet var myDetailViewImage: UIImageView!
  @IBOutlet var myDetailViewBottomTextView: UITextView!
  
  var x : String!
  var myDetailViewTopTextViewText : String?
  var myDetailViewImageText : String!
  var myDetailViewBottomTextViewText : String!
  
 
  
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
    self.myDetailViewTopTextView.text = self.myDetailViewTopTextViewText
    print("1. " + myDetailViewTopTextView.text!)
 //   print("2. " + myDetailViewTopTextViewText!)
    self.myDetailViewTopTextViewText = "hello"
    print("2. " + self.myDetailViewTopTextViewText!)
    // self.myDetailViewImage.image =
  //  self.myDetailViewBottomTextView.text = self.myDetailViewBottomTextViewText
    
    


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
