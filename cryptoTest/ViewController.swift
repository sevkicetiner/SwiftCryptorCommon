//
//  ViewController.swift
//  cryptoTest
//
//  Created by Admin on 19.09.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import CryptoSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let aes = try AES(key: "passwordpassword", iv: "drowssapdrowssap", blockMode: .CBC, padding: PKCS7()) // aes128
            let ciphertext = try aes.encrypt(Array("this text will encrypt".utf8))
            print(ciphertext.toBase64())
            
            let text = try "iuFfBwODs7fLy5IuakFmWRIcm/zGcjlRqqwMSGPoEm4=".decryptBase64ToString(cipher:aes)
            
            print(text)
        } catch { }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

