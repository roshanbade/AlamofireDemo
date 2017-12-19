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
        //fetchUrl(url: "https://dev-api-lms.fusemachines.com/oauth/token", param:["grant_type":"password", "username":"sanit@fusemachines.com", "password":"sanit123"])
        
        //fetchHome(url: "https://dev-api-lms.fusemachines.com/courses?page=0&size=25")
        //fetchUrl(url: "https://jsonplaceholder.typicode.com/posts")
        //fetchEnrolled(url: "https://dev-api-lms.fusemachines.com/users/enrolled")
        //resume
        //fetchProgress(url: "https://dev-api-lms.fusemachines.com/progress/5a153be8fe96da6c864f2211")
        
        //progress
        fetchProgress(url: "https://dev-api-lms.fusemachines.com/progress/5a3385a1f1b15c2fb6b1369a")
    }
   
    
    let headers = ["authorization": "Basic Y2xpZW50OnNlY3JldA=="]
    let token = ["authorization":"bearer c99013fc-fd13-445c-b75f-d42a07fc6df0"]
    
    func fetchProgress(url: String) {
        let decoder = JSONDecoder()
        
        Alamofire.request(url, method: .get, headers: token).responseString{(response) in
            if let data = response.data{
               let coursesInProgress = try! decoder.decode(CourseProgress.self, from: data)
                print("data: \(data)")
                print("courseInProgress: \(coursesInProgress)")
            }
        }
    }
    
    func fetchEnrolled(url: String) {
        let decoder = JSONDecoder()

        Alamofire.request(url, method: .get, headers: token).responseString{(response) in
            if let statuscode = response.response?.statusCode {
                print("statuscode: \(statuscode)")
            }
            
            if let data = response.data {
                let enrolledCourses = try! decoder.decode([Course].self, from: data)
                print("LoginInfos: \(enrolledCourses)")
                 print("value: \(data)")
            } else {
                print("no value")
            }
          
//            if let value = response.value {
//                print("value: \(value)")
//            } else {
//                print("value: no value")
//            }
        }
    }
    
    func fetchHome(url: String) {
        print("fetching data.....")
            let decoder = JSONDecoder()

            Alamofire.request(url, method: .get, headers: token).responseString{(response) in
            print(response.request!)
            if let statuscode = response.response?.statusCode {
                print("statuscode: \(statuscode)")
            }
          
            if let value = response.data {
                //let json = String(data: value, encoding: .utf8)!
                //let jsonData = value.data(using: .utf8)
                //print("data type: \(type(of: jsonData!))")
                //print("jsonData: \(jsonData!)")
                let courses = try! decoder.decode([Course].self, from: value)
                print("courses: \(courses[0])")
               // print("value: \(value)")
            } else {
                print("no value")
            }
        }
        print("data fetched!")
    }
    func fetchUrl(url: String, param: [String: Any]) {
        let decoder = JSONDecoder()
        Alamofire.request(url, method: .post, parameters: param, encoding: URLEncoding.default, headers : headers).responseString{(response) in
                    print(response.request!)
                    //print(response.value ?? "no value")
            
            
            
            if let data = response.data {
                let loginInfo = try! decoder.decode(Login.self, from: data)
                print("loginInfo: \(loginInfo)")
                
            }
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

