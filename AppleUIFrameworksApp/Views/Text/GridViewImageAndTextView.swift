//
//  GridViewImageAndTextView.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 5/6/24.
//

import SwiftUI

struct GridViewImageAndTextView: View {
    let frameWork : Framework
    
    var body: some View {
        HStack{
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}


#Preview {
    GridViewImageAndTextView(frameWork: MockData.sampleFramework)
}
