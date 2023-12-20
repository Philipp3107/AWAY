//
//  Changer.swift
//  away
//
//  Created by Philipp Kotte on 19.12.23.
//

import SwiftUI

struct Changer: View {
    @State var fetching: Bool = true;
    var body: some View {
        ZStack{
            if(fetching){
                ContentView(fetching: $fetching)
            }else{
                Test()
            }
            
        }
    }
}

#Preview {
    Changer()
}
