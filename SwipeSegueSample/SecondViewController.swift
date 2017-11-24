//
//  SecondViewController.swift
//  SwipeSegueSample
//
//  Created by TakaoAtsushi on 2017/11/24.
//  Copyright © 2017年 TakaoAtsushi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(SecondViewController.rightSwipeView(sender:)))  //Swift3
        // ライトスワイプのみ反応するようにする
        rightSwipe.direction = .right
        // viewにジェスチャーを登録
        self.view.addGestureRecognizer(rightSwipe)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// ライトスワイプ時に実行される
    @objc func rightSwipeView(sender: UISwipeGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
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
