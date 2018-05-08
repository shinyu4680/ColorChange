//
//  ViewController.swift
//  ColorChange
//
//  Created by kevin on 2018/4/14.
//  Copyright © 2018年 KevinChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
//    @IBAction func redSliderChang(_ sender: Any){
//        backgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
//    }
//
//    @IBAction func blueSliderChang(_ sender: Any){
//        backgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
//    }
//
//    @IBAction func greenSliderChang(_ sender: Any){
//        backgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
//    }

//可由同一個function整合
    
    @IBAction func colorSliderChang(_ sender: UISlider){
        backgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        //顯示RGB數字
        if sender == redSlider{
            let redNumber = 255*redSlider.value
            let redNumberString = String(format: "%.0f", redNumber)
            redLabel.text = redNumberString
        }else if sender == blueSlider{
//            blueLabel.text = "\(255*blueSlider.value)"
            let blueNumber = 255*blueSlider.value
            let blueNumberString = String(format: "%.0f", blueNumber)
            blueLabel.text = blueNumberString
        }else if sender == greenSlider{
//            greenLabel.text = "\(255*greenSlider.value)"
            let greenNumber = 255*greenSlider.value
            let greenNumberString = String(format: "%.0f", greenNumber)
            greenLabel.text = greenNumberString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

