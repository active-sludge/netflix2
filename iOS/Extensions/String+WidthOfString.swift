//
//  String+WidthOfString.swift
//  Netflix2 (iOS)
//
//  Created by Huseyin Can Dayan on 1.01.2021.
//

import UIKit

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttribute = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttribute)
        return size.width
    }
}
