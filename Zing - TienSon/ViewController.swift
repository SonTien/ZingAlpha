//
//  ViewController.swift
//  Zing - TienSon
//
//  Created by HoangHai on 6/8/16.
//  Copyright © 2016 Tien Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var ten: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo.alpha = 0
        text.alpha = 0
        ten.alpha = 0
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {self.logo.alpha = 1}, completion:
            {(finished) in
                UIView.animateWithDuration(3, animations: {
                    self.text.center = CGPointMake(self.logo.center.x, 70)
                    self.text.alpha = 1
                }, completion: {(next) in
                    UIView.animateWithDuration(3, animations: {
                        self.ten.center = CGPointMake(self.logo.center.x, 500)
                        self.ten.alpha = 1
                })
              })
            })
            }
    }


    