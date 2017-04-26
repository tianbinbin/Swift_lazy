//
//  ViewController.swift
//  Swift_lazy_swift
//
//  Created by 田彬彬 on 2017/4/26.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 让数组在用到的时候再加载 节省资源
    // 懒加载 用到时再加载 多次使用才会加载一次
    lazy var names:[String] = {
    
        let names = ["tian","bin","bin"]
        
        print("验证是否是懒加载")
        
        return names
    
    }()
    
    lazy var btn:UIButton = {
    
        let btn = UIButton()
        
        btn .setTitle("nihao", for: .normal)
        
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        print(names.count)
        print(btn)
    }



}

