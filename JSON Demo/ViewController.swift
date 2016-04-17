//
//  ViewController.swift
//  JSON Demo
//
//  Created by Yisen on 6/26/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let urlPath = "http://www.telize.com/geoip"
        
        let url = NSURL(string: urlPath)
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(url!, completionHandler: {data, error, response -> Void in
            if error != nil {
                println(error)
                
            } else {
               let jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
                
               println(jsonResult, "372189379821739812")
                
            }
        })
        
        task.resume()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

