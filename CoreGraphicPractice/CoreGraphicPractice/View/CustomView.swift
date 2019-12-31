//
//  CustomView.swift
//  CoreGraphicPractice
//
//  Created by dave76 on 2020/01/01.
//  Copyright © 2020 dave76. All rights reserved.
//

import UIKit

class CustomView: UIView {
  
  override func draw(_ rect: CGRect) {
    UIColor.orange.setFill()
    UIRectFill(rect)
  }
}
