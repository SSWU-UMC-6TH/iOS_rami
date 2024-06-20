//
//  ViewController.swift
//  userDefault
//
//  Created by 김민주 on 6/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IDField : UITextField!
    @IBOutlet weak var PasswordField : UITextField!
    @IBOutlet weak var label : UILabel!
    
    let myUserDefaults = UserDefaults.standard

    override func viewDidLoad() {
            super.viewDidLoad()
            myUserDefaults.string(forKey: "IDKey")
            myUserDefaults.string(forKey: "PasswordKey")
            
        }
    
    // 로그인 버튼 눌렀을 때
    @IBAction func LoginAction(_ sender: Any) {
            if IDField.text == myUserDefaults.string(forKey: "IDKey") {
               if PasswordField.text == myUserDefaults.string(forKey: "PasswordKey") {
                   label.text = IDField.text! + "님 로그인 성공"
                }
                else {
                    label.text = "비밀번호 불일치"
                    PasswordField.text = ""
                }
            }
            else {
                label.text = "존재하지 않는 아이디"
                IDField.text = ""
                PasswordField.text = ""
            }
            
        }
    
    //회원가입 버튼 눌렀을때
    @IBAction func SignupAction(_ sender: Any) {
            if IDField.text == myUserDefaults.string(forKey: "IDKey") {
                label.text = "이미 존재하는 아이디"
            } else {
                myUserDefaults.set(IDField.text, forKey: "IDKey")
                myUserDefaults.set(PasswordField.text, forKey: "PasswordKey")
                label.text = "회원가입 성공"
                IDField.text = ""
                PasswordField.text = ""
            }
            
        }

}

