//
//  CMRSSIView.swift
//  SSBlueCore
//
//  Created by Cimons on 2021/4/7.
//

import UIKit

public class CMRSSIView: UIView {

    /// 信号线数目
    public var rssiBackLineCount = 5 {
        didSet {
            setNeedsDisplay()
        }
    }
    /// 间距基数
    public var paddingBase:CGFloat = 1.3 {
        didSet {
            setNeedsDisplay()
        }
    }
    /// 默认信号线背景色
    public var colorLineBack = UIColor.gray {
        didSet {
            setNeedsDisplay()
        }
    }
    /// 信号线颜色
    public var colorLine = UIColor.green {
        didSet {
            setNeedsDisplay()
        }
    }
    
    public var countLine = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white        
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// 信号线
extension CMRSSIView {
    
    public override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        for i in 0..<rssiBackLineCount {
            let xPadding = (frame.width)/CGFloat(rssiBackLineCount)*CGFloat(i)+2
            let yPadding = frame.height/paddingBase - frame.height/paddingBase/CGFloat(rssiBackLineCount)*CGFloat(i)
            let linePath = UIBezierPath()
            linePath.move(to: CGPoint(x: xPadding, y: frame.height))
            linePath.addLine(to: CGPoint(x: xPadding, y:yPadding))
            linePath.lineCapStyle = .round
            linePath.lineWidth = 2
            context.addPath(linePath.cgPath)
            i < countLine ? context.setStrokeColor(colorLine.cgColor) : context.setStrokeColor(colorLineBack.cgColor)
            context.strokePath()
        }
    }
    
}
