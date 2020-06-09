//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Avani Patel on 6/8/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnPlay: UIButton!
    
    var isAnimated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func play(_ sender: UIButton) {
        imageView.animationImages = [
        UIImage(named: "frame_0_delay-0.1s.gif")!,
        UIImage(named: "frame_1_delay-0.1s.gif")!,
        UIImage(named: "frame_2_delay-0.1s.gif")!,
        UIImage(named: "frame_3_delay-0.1s.gif")!,
        UIImage(named: "frame_4_delay-0.1s.gif")!,
        UIImage(named: "frame_5_delay-0.1s.gif")!
        ]
        
        imageView.animationDuration = 1
        imageView.animationRepeatCount = 0
        
        if isAnimated {
            imageView.stopAnimating()
            btnPlay.setTitle("Play", for: [])
            isAnimated = false
        }
        else {
            imageView.startAnimating()
            btnPlay.setTitle("Stop", for: [])
            isAnimated = true
        }
    }
    
    @IBAction func fadeIn(_ sender: UIButton) {
        imageView.alpha = 0
        UIView.animate(withDuration: 2){
            self.imageView.alpha = 1
        }
    }
    
    @IBAction func slideIn(_ sender: UIButton) {
        imageView.center = CGPoint(x: imageView.center.x - 500, y: imageView.center.y)
        UIView.animate(withDuration: 2) {
            self.imageView.center = CGPoint(x: self.imageView.center.x + 500, y: self.imageView.center.y)
        }
    }
    
    
    @IBAction func grow(_ sender: UIButton) {
        let width = imageView.frame.size.width
        let height = imageView.frame.size.height
        let x = imageView.frame.origin.x
        let y = imageView.frame.origin.y
        
        imageView.frame = CGRect(x: x, y: y, width: 0, height: 0)
        UIView.animate(withDuration: 2) {
            self.imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        }
    }
    
}

