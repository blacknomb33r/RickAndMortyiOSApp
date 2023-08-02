//
//  Extensions.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 8/2/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}

