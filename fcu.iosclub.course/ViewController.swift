//
//  ViewController.swift
//  fcu.iosclub.course
//
//  Created by 阿騰 on 2019/8/10.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mea = ["🍺":"啤酒","👻":"鬼～","💩":"便便先生","🤓":"小聰明","🐹":"哈姆太郎"]
    /*
     不會跳中文鍵盤 第26行     ["🍺":"啤酒","👻":"鬼~","💩":"便便先生","🤓":"小聰明","🐹":"哈姆太郎"]
     ["🍺":"beer","👻":"ghost","💩":"poop","🤓":"Nerd Face","🐹":"Hamster"]
    */
    
    @IBAction func textbutton(_ sender: UIButton) {
        var tstr = sender.titleLabel?.text
        
        let ale = UIAlertController(title: "這個是", message: nil, preferredStyle: UIAlertController.Style.alert)
        ale.addTextField { (UITextField) in
            UITextField.placeholder = "請輸入答案(英文)"
            
            //UITextField.keyboardType = .asciiCapable
        }
        ale.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            if ale.textFields![0].text! == self.mea[sender.titleLabel!.text!]
            {
                let alet = UIAlertController(title: "恭喜答對", message: nil, preferredStyle: UIAlertController.Style.alert)
                alet.addAction(UIAlertAction(title: "Ya~", style: .default, handler: nil))
                self.present(alet, animated: true, completion: nil)
            }else
            {
                let alet = UIAlertController(title: "答錯", message: nil, preferredStyle: UIAlertController.Style.alert)
                               alet.addAction(UIAlertAction(title: "QQ", style: .default, handler: nil))
                               self.present(alet, animated: true, completion: nil)
            }
        }))
        present(ale, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for(index, v) in self.view.subviews.enumerated(){
            UIView.animate(withDuration: 0.5, delay: 0.1 * Double(index) , options: UIView.AnimationOptions(), animations: {() -> Void in
                v.center.x += v.frame.size.width * 2
            }, completion: nil)
        }
        UIView.animate(withDuration: 0.3, delay: 0.1, options: [.repeat], animations: {()->Void in
            for i in self.view.subviews{
                i.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }



        }, completion: nil)
        // Do any additional setup after loading the view.
    }


}

