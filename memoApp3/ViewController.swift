//
//  ViewController.swift
//  memoApp3
//
//  Created by NOWALL on 2016/10/29.
//  Copyright © 2016年 NOWALL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // テキストビューを扱うための宣言
    @IBOutlet weak var memoTextView: UITextView!
    
    // 保存ボタンを押されたときに実行される関数(処理のかたまり)
    @IBAction func saveButton(_ sender: Any) {
        
        // データを保存するためのUserDefaultインスタンスを生成する
        let ud = UserDefaults.standard
        
        // iPhoneの端末内にmemotextView.textの値をidという名前をつけて保存する。
        ud.set(memoTextView.text, forKey: "id")
    }
    
    // 画面を描画する前に実行される関数
    override func viewWillAppear(_ animated: Bool) {
        
        // データを保存するためのUserDefaultインスタンスを生成する
        let ud = UserDefaults.standard
        
        // もし、iPhone端末内に保存されている値がnilではなかったら, (値が存在しなかったら)

            
            // iPhone端末内にidという名前で保存した値をString(文字列)として読み込み、textViewに表示させる
            memoTextView.text = ud.object(forKey: "id") as! String!
        
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

