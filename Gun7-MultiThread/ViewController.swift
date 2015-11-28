//
//  ViewController.swift
//  Gun7-MultiThread
//
//  Created by IOS 3501 on 28/11/15.
//  Copyright (c) 2015 Ali.Can. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dlw = DownloadWork(title : "picture", url : "http://example.com")
    
    var dlw2 = DownloadWork()
    var dlw1 = DownloadWork(title : "picture1", url : "http://example.com")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // NSOperation nesneleri yani threadlar bir kuyruğa eklenir ve o kuyruktan sırası gelenler direk çalıştırılır.
        // NSOperation koyulan sırayla çekeceği garantisi yoktur
      
        // sıralı olması için NSOperationQueuePriority kullanılır. Ancak araştırılmalı
        let kuyruk = NSOperationQueue()
        
        kuyruk.addOperation(dlw)
        kuyruk.addOperation(dlw1)
        kuyruk.addOperation(dlw2)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

