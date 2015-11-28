//
//  DownloadWork.swift
//  Gun7-MultiThread
//
//  Created by IOS 3501 on 28/11/15.
//  Copyright (c) 2015 Ali.Can. All rights reserved.
//

import UIKit

class DownloadWork: NSOperation {
    var title: String = ""
    var url : String = ""
    
    init(title : String, url : String)
    {
        self.title = title
        self.url = url
        
    }
    
//    override init()
//    {
//        self.title = ""
//        self.url = ""
//    
//    }

    // içeride init çağırıyorsak convinience kullanmak zorundayız
    // convinience yazılarak direk default değerlerle initi çağırmaya zorlamak için kullanılır
    override convenience init()
    {
        self.init(title : "Default title", url : "default url")
        
    }
    
//   convenience override init()
//    {
//        self.title = ""
//        self.url = ""
//        
//    }
    
    // mainin içine dögü yazılamaz. Yazılır ama işlemez. Çünkü programda en başta çalışır
    override func main() {
        println("Downloading \(self.title)")
        NSThread.sleepForTimeInterval(10)
        println("Downloading \(self.title)")
    }
    
}
