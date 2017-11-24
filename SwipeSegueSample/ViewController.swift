//
//  ViewController.swift
//  SwipeSegueSample
//
//  Created by TakaoAtsushi on 2017/11/24.
//  Copyright © 2017年 TakaoAtsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.leftSwipeView(sender:)))  //Swift3
        // レフトスワイプのみ反応するようにする
        leftSwipe.direction = .left
        // viewにジェスチャーを登録
        self.view.addGestureRecognizer(leftSwipe)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /// レフトスワイプ時に実行される
    @objc func leftSwipeView(sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "hoge", sender: nil)
    }
   

}

