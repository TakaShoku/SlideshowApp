//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 曽和寛貴 on 2018/07/24.
//  Copyright © 2018年 曽和寛貴. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var imageView2: UIImageView!
    
    var picture: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView2.image = picture
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
