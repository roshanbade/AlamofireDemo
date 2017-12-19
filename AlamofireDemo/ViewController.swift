//
//  ViewController.swift
//  AlamofireDemo
//®
//  Created by Criss Angel on 12/14/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import UIKit
//import SwiftyJSON
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
//        fetchUrl(url: "", param: ["category":"dance", "keyword":"ballet", "value":["value1","value2"]])
//        fetchUrl(url: "https://orangevalleycaa.org/api/auth/authentication.php")
       // fetchUrl(url: "https://dev-api-lms.fusemachines.com/oauth/token", param:["grant_type":"password", "username":"sanit@fusemachines.com", "password":"sanit123"])
        
        fetchHome(url: "https://dev-api-lms.fusemachines.com/courses?page=0&size=25")
        //fetchUrl(url: "https://jsonplaceholder.typicode.com/posts")
    }
   
    
    let headers = ["authorization": "Basic Y2xpZW50OnNlY3JldA=="]
    let token = ["authorization":"bearer dee00344-8680-44aa-b13c-dd9266febf27"]
    
//    let jsonData = animalJson.data(using: .utf8)
//
//    let animalObjects = try! decoder.decode([Animal].self, from: jsonData!)
    
    func fetchHome(url: String) {
        print("fetching data.....")
            let decoder = JSONDecoder()

            Alamofire.request(url, method: .get, headers: token).responseString{(response) in
            print(response.request!)
            if let statuscode = response.response?.statusCode {
                print("statuscode: \(statuscode)")
            }
            if let data = response.data
            {
                print("data: \(data)")
            } else {
                print("no data")
            }
            if let value = response.data {
                //let json = String(data: value, encoding: .utf8)!
                //let jsonData = value.data(using: .utf8)
                //print("data type: \(type(of: jsonData!))")
                //print("jsonData: \(jsonData!)")
                let courses = try! decoder.decode([Course].self, from: value)
                print("courses: \(courses[0])")
                print("value: \(value)")
            } else {
                print("no value")
            }
        }
        print("data fetched!")
    }
    func fetchUrl(url: String, param: [String: Any]) {
        Alamofire.request(url, method: .post, parameters: param, encoding: URLEncoding.default, headers : headers).responseString{(response) in
                    print(response.request!)
                    print(response.value ?? "no value")
                }.responseJSON{(response) in
//                    print(response.value ?? "no value")
                }
            }
    
    
//    func fetchUrl(url: String, param: [String: Any]) {
//        Alamofire.request(url, method: .post, parameters: param, encoding: JSONEncoding.prettyPrinted).responseString{(response) in
//            print(response.value ?? "no value")
//        }.responseJSON{(response) in
//            print(response.value ?? "no value")
//        }
//    }
    
    func fetchUrl(url: String) {
        Alamofire.request(url).responseString{(response) in
            print(response.value ?? "no value")
            
        }
        
    }
}

