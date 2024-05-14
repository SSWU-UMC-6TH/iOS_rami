//
//  test.swift
//  daangnmarket
//
//  Created by 김민주 on 5/3/24.
//

import Foundation
import UIKit

struct product {
    let title: String
    let title2: String
    var image: String
}

extension product {
    static var data = [
        product(title: "에어팟맥스 급처", title2: "에어팟맥스 급처", image: "1"),
        product(title: "신상 에어팟 맥스 미개봉", title2: "선물받은거에요",  image: "2"),
        product(title: "AirPods Max 미개봉",  title2: "에어팟맥스 급처", image: "3"),
        product(title: "사용감 있는 AirPods Max", title2: "에어팟맥스 급처", image: "4"),
        product(title: "에어팟 맥스 무거워서 팔아요", title2: "에어팟맥스 급처", image: "5"),
    ]
}
