  import UIKit
  
  public class TDSwiftCapsuleLabel: UILabel {
    public static let defaultThemeColor = UIColor(red:0.25, green:0.40, blue:0.82, alpha:1.0)
    
    public init(frame: CGRect,
                textColor: UIColor = TDSwiftCapsuleLabel.defaultThemeColor,
                borderColor: UIColor = TDSwiftCapsuleLabel.defaultThemeColor) {
        super.init(frame: frame)
        setupAppearance(textColor: textColor, borderColor: borderColor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAppearance(textColor: TDSwiftCapsuleLabel.defaultThemeColor,
                        borderColor: TDSwiftCapsuleLabel.defaultThemeColor)
    }
    
    private func setupAppearance(textColor: UIColor, borderColor: UIColor) {
        // Capsule border
        self.backgroundColor = .clear
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        
        // Label text color
        self.textColor = textColor
        
        // Text Alignment
        self.textAlignment = .center
    }
    
    
    public override func drawText(in rect: CGRect) {
        // Paddings
        let insets = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0)
        super.drawText(in: rect.inset(by: insets))
    }
  }
