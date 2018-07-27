//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 曽和寛貴 on 2018/07/24.
//  Copyright © 2018年 曽和寛貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var timer: Timer!
    
//    表示している画像の番号
    var slideImageNo = 0
    
//    表示している画像の番号を元に画像を表示する
    func slideImage() {
        
//        画像の名前の配列
        let imageNameArray = [
            "matthew-kerslake-751539-unsplash.jpg",
            "sam-wermut-752079-unsplash.jpg",
            "sam-wermut-752080-unsplash.jpg",
            ]
//        画像の番号が正常な範囲を指しているかチェック
        
//        範囲より下を指している場合、最後の画像を表示
        if slideImageNo < 0 {
            slideImageNo = 2
        }
        
//        範囲より上を指している場合、最初の画像を表示
        if slideImageNo > 2 {
            slideImageNo = 0
        }
        
//        表示している画像の番号から名前を取り出し
        let name = imageNameArray[slideImageNo]
        
//        画像を読み込み
        let image = UIImage(named: name)
        
//        Image Viewに読み込んだ画像をセット
        imageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "matthew-kerslake-751539-unsplash.jpg")
        imageView.image = image
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateTimer(_ timer: Timer) {
        
        print("onTimer")
        
        slideImageNo += 1
        
        slideImage()
        
    }
    
    
//    次の画像を表示
    @IBAction func nextButton(_ sender: Any) {
        
        slideImageNo += 1
        slideImage()
    }
    
//    前の画像を表示
    @IBAction func backButton(_ sender: Any) {
        
        slideImageNo -= 1
        slideImage()
    }
    
//    ２秒毎に再生と一時停止
    @IBAction func palyAndSotpButton(_ sender: Any) {
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            button3.setTitle("停止", for: UIControlState())
            button1.isEnabled = false
            button2.isEnabled = false
        } else {
            if self.timer != nil {
                self.timer.invalidate()   // 現在のタイマーを破棄する
                self.timer = nil          // startTimer() の timer == nil で判断するために、 timer = nil としておく
                button3.setTitle("再生", for: UIControlState())
                button1.isEnabled = true
                button2.isEnabled = true
                
            }
            
        }
        
    }
    
    
    @IBAction func onTapImage(_ sender: Any) {
        
//        セグエを使用して画面を遷移
        performSegue(withIdentifier: "SecondViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "SecondViewController") {
            let secondViewController:SecondViewController = segue.destination as! SecondViewController
            
            secondViewController.picture = imageView.image
        }
    }
    
//    他の画面から segue を使って戻ってきた時に呼ばれる
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    

}

