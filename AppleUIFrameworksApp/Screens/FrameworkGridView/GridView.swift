//
//  GridView.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 4/16/24.
//

import SwiftUI

struct GridView: View {
    @StateObject var viewModel = FrameWorkViewModel()
    
    
                                          
    var body: some View {
        
        NavigationView{

                List{
                    ForEach(MockData.frameworks){
                        framework in
                        // on tap gesture on each item navigates to detail screen
                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                            // each item of the list view
                            GridViewImageAndTextView(frameWork: framework)
                        }
                    }
                }
    
           .navigationTitle("🍎 FrameWorks")
        }.accentColor(Color(.label))
       
    }
}

#Preview {
    GridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

