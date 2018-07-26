//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 曽和寛貴 on 2018/07/24.
//  Copyright © 2018年 曽和寛貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTapImage(_ sender: Any) {
        
//        セグエを使用して画面を遷移
        performSegue(withIdentifier: "result", sender: nil)
    }
    

}

