//
//  CustomButton.swift
//  CustomButtonLibrary
//
//  Created by HDB ISG on 20/3/23.
//

import Foundation
import UIKit

public class CustomButton: UIButton {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
  public func setupButton() {
  
        
        backgroundColor      = UIColor(red: 12/255, green: 129/255, blue: 136/255, alpha: 1)
        titleLabel?.font     = btnPositive().font
        layer.cornerRadius   = 30
       layoutIfNeeded()

      translatesAutoresizingMaskIntoConstraints = false
      widthAnchor.constraint(equalToConstant: 345).isActive = true
      heightAnchor.constraint(equalToConstant: 64).isActive = true

      
    }
    
    
   public struct btnPositive {
        let font = UIScreen.main.bounds.height == 568 ? UIFont.systemFont(ofSize: UIScreen.main.bounds.height / 40) : UIFont.systemFont(ofSize: 16)
        let textColor = UIColor.white
   
    }
    
    

}
