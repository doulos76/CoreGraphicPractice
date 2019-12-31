//
//  PushButton.swift
//  CoreGraphicPractice
//
//  Created by dave76 on 2020/01/01.
//  Copyright © 2020 dave76. All rights reserved.
//

import UIKit

@IBDesignable
class PushButton: UIButton {
  
  // MARK:- Properties
  
  private struct Constants {
    static let plusLineWidth: CGFloat = 3.0
    static let plusButtonScale: CGFloat = 0.6
    static let halfPointShift: CGFloat = 0.5
  }
  
  private var halfWidth: CGFloat {
    return bounds.width / 2
  }
  
  private var halfHeight: CGFloat {
    return bounds.height / 2
  }
  
  // MAKR:- Initializers
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    //setTitle("PushButton", for: .normal)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK:- Draw Methods
  
  override func draw(_ rect: CGRect) {
    let path = UIBezierPath(ovalIn: rect)
    UIColor.blue.setFill()
    path.fill()
    
    let plusWidth = min(bounds.width, bounds.height) * Constants.plusButtonScale
    let halfPlusWidth = plusWidth / 2
    let plusPath = UIBezierPath()
    plusPath.lineWidth = Constants.plusLineWidth
    plusPath.move(to: .init(
      x: halfWidth - halfPlusWidth + Constants.halfPointShift,
      y: halfHeight + Constants.halfPointShift))
    plusPath.addLine(to: .init(
      x: halfWidth + halfPlusWidth + Constants.halfPointShift,
      y: halfHeight + Constants.halfPointShift))
    plusPath.move(to: .init(
      x: halfWidth + Constants.halfPointShift,
      y: halfHeight - halfPlusWidth + Constants.halfPointShift))
    plusPath.addLine(to: .init(
      x: halfWidth  + Constants.halfPointShift,
      y: halfHeight + halfPlusWidth + Constants.halfPointShift))

    UIColor.white.setStroke()
    plusPath.stroke()
  }
}
