//
//  ViewController.swift
//  baemin01
//
//  Created by 김민주 on 4/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var couponView: UIView!
    @IBOutlet weak var saleView: UIView!
    @IBOutlet weak var Titlesale: UILabel!
    @IBOutlet weak var SearchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance() //색상 지정
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor(red: 0.16, green: 0.76, blue: 0.74, alpha: 1.0)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        
        configUI();
        controlFont();
    }
    //MARK: -- setUI
    
    func controlFont() {
        let attributedStr = NSMutableAttributedString(string: Titlesale.text ?? "대용량특가")
        attributedStr.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 19), range: (Titlesale.text! as NSString).range(of: "대용량특가 "))
        attributedStr.addAttribute(.font, value: UIFont.systemFont(ofSize: 13), range: (Titlesale.text! as NSString).range(of: "많이 살수록 더 저렴하죠"))

        // Titlesale의 속성 설정
        Titlesale.attributedText = attributedStr
    }
    
    func configUI() {
        firstView.layer.masksToBounds = true;
        firstView.layer.cornerRadius = 10;
        
        secondView.layer.masksToBounds = true;
        secondView.layer.cornerRadius = 10;
        
        thirdView.layer.masksToBounds = true;
        thirdView.layer.cornerRadius = 10;
        
        couponView.layer.masksToBounds = true;
        couponView.layer.cornerRadius = 10;
        couponView.layer.borderWidth = 2;
        couponView.layer.borderColor = UIColor.blue.cgColor;
        
        saleView.layer.masksToBounds = true;
        saleView.layer.cornerRadius = 10;
        
        SearchView.layer.masksToBounds = true;
        SearchView.layer.cornerRadius = 10;
    }
    
    
}

