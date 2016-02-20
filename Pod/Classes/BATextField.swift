//
//  BATextField.swift
//  Pods
//
//  Created by Ben Aneesh on 2016-02-19.
//
//

import UIKit

@IBDesignable
public class BATextField: UITextField {
    
    /**
     The color of the border line.
     
     This property applies a color to the lower edge of the control. The default value for this property is a light grey color.
     */
    @IBInspectable var separatorColor: UIColor = UIColor.lightGrayColor()
    
    
    /**
     The thickness of the border line.
     
     This property applies a height to the lower edge of the control. The default value for this property is 1.00.
     */
    @IBInspectable var separatorHeight: CGFloat = 1.00
    
    
    /**
     The color of the placeholder.
     
     This property applies a color to the lower edge of the control. The default value for this property is a light grey color.
     */
    @IBInspectable var placeholderColor: UIColor = UIColor.lightGrayColor()
    
    
    /**
     The aligment of the text and placeholder.
     
     This property applies the alignment to both the placeholder and the text itself. The default value for this property is .Left.
     */
    @IBInspectable var aligment: NSTextAlignment = NSTextAlignment.Left
    
    
    
    
    public required init(coder  aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)!
        setup()
    }
    
    public required override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public func setup(){
        self.contentVerticalAlignment = .Center
        self.textAlignment = aligment
        self.borderStyle = .None
    }
    
    public override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(ctx, separatorHeight)
        CGContextSetStrokeColorWithColor(ctx, separatorColor.CGColor)
        CGContextMoveToPoint(ctx, 0, rect.size.height)
        CGContextAddLineToPoint(ctx, rect.size.width, rect.size.height)
        CGContextStrokePath(ctx)
    }
    
    public override func drawPlaceholderInRect(rect: CGRect) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = aligment
        let textFontAttributes = [
            NSFontAttributeName: self.font!,
            NSForegroundColorAttributeName: placeholderColor,
            NSParagraphStyleAttributeName: paragraphStyle,
        ]
        placeholder!.drawInRect(rect, withAttributes: textFontAttributes)
    }
    
    public override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        let size = placeholder!.boundingRectWithSize(bounds.size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font!], context: nil)
        return CGRectMake(0, self.frame.height/2 - size.height/2, bounds.width, bounds.height)
    }
}
