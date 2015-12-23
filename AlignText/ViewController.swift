//
//  ViewController.swift
//  AlignText
//
//  Created by uodna on 2015/12/23.
//  Copyright © 2015年 uodna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelWithBackground: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // imageにborderを引く
        image.layer.borderColor = UIColor.blackColor().CGColor
        image.layer.borderWidth = 1

        // ボタンタイトルの行数を制限する
        button.titleLabel?.numberOfLines = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapShort(sender: AnyObject) {
        changeText("短い文")
    }

    @IBAction func tapMedium(sender: AnyObject) {
        changeText("複数行にまたがるくらいの文章")
    }

    @IBAction func tapLong(sender: AnyObject) {
        changeText("この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。")
    }

    private func changeText(text:String) {
        label.text = text
        labelWithBackground.text = text
        button.setTitle(text, forState: UIControlState.Normal)
    }
}

