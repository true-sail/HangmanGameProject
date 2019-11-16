//
//  ViewController.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/16.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //テーブルに表示する内容
    let categories = ["sports", "fruits", "animals"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // これは最後に書く。表示するおまじない。
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// extension : 拡張
// 今回の場合は、ViewControllerをテーブルビューが使えるように拡張
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // TableViewの行数 numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //配列名.countで配列の数分を表す
        return categories.count
    }
    
    // TableViewに表示する内容 UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得
        // dequeueは先に入ったものから先に出てくる。enqueueは後に入ったものが先に出てくる。
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        // 取得したセルに表示する文字を設定
        cell.textLabel?.text = categories[indexPath.row]
        
        // 完成したセルを返す
        return cell
    }
}
