//
//  color.swift
//  boink
//
//  Created by Dylan Dang on 10/24/21.
//

import SpriteKit
import GameplayKit

//0 = play area and font color; 1 = border color
public let backgroundColorWays:[Int: [String]] = [1 : ["FFFFFF", "CDCACC"], //white, light gray
                          2 : ["668586","93C6D6"], //steel teal, dark sky blue
                          3 : ["8ADCBD", "F0D3E0"], //mint, light pink
                          4 : ["D9B8C4", "957186"], //baby pink, dust purple
                          5 : ["9AA2E5", "2E1489"] //baby blue, royal blue
]
public var textBorderColor = color(hex: "FFFFFF")


func color(hex:String) -> UIColor{
    
    //r,g,b
    var colorArr:[CGFloat] = [0,0,0]
    var colorArrInd = 0
    var currentInd = 0
    
    for var color in colorArr{
        let index1 = hex.index(hex.startIndex, offsetBy: currentInd)
        if hex[index1].isNumber{
            color += CGFloat(hex[index1].wholeNumberValue! * 16)
        }else{
            color += CGFloat((hex[index1].asciiValue! - 55) * 16)
        }
        
        let index2 = hex.index(hex.startIndex, offsetBy: currentInd + 1)
        if hex[index2].isNumber{
            color += CGFloat(hex[index2].wholeNumberValue!)
        }else{
            color += CGFloat(hex[index2].asciiValue! - 55)
        }
        
        colorArr[colorArrInd] = color
        colorArrInd += 1
        currentInd += 2
    }
    
    return UIColor(red: colorArr[0]/255, green: colorArr[1]/255, blue: colorArr[2]/255, alpha: 1)
}



func setBackground(self:SKScene, chosenColor:[String]){
    
    textBorderColor = color(hex: chosenColor[0])
    self.backgroundColor = color(hex: chosenColor[1])
    
    
    //change border & text color
    assignTextBorderColor()
    
  
}

func assignTextBorderColor(){
    let borderArr = [leftBorder, rightBorder, topBorder, bottomBorder]
    let labelArr = [highScoreWordLabel, score]
    for border in borderArr{
        border.strokeColor = textBorderColor
    }
    for ele in labelArr{
        ele.color = textBorderColor
    }
     
    
    borderBackground.color = textBorderColor
}
