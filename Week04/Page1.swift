//
//  Page1.swift
//  Week04
//
//  Created by Henry Chen on 3/20/23.
//

import SwiftUI
import AVFoundation

struct Page1: View {
    @StateObject var selectedNum = numberDisplay()
    
    var body: some View {
        
//        if selectedNum.selectedNum == nil {
//            selectedNum.selectedNum = 0
//        }
        
        return VStack {
            //Rectangle()
            Text("\(selectedNum.selectedNum ?? 0)")
                .font(.system(size: 40))
        }
    }
}



struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
