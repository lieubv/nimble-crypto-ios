//
//  MyCoinSection.swift
//
//  Created by Khanh on 12/12/2022.
//

import Styleguide
import SwiftUI
import MyCoin

struct MyCoinSection: View {

    var body: some View {
        VStack {
            HStack {
                Text(Strings.Home.myCoinTitle)
                    .foregroundColor(Color.titleMedium)
                    .font(.Inter.medium.font(for: .callout))
                
                Spacer()
                
                Button(Strings.Home.seeAllText) {}
                    .foregroundColor(.caribbeanGreen)
                    .font(.Inter.medium.font(for: .subheadline))
            }
            .padding(16.0)

            MyCoinView()
        }
    }
}

#if DEBUG
struct MyCoinSection_Previews: PreviewProvider {

    static var previews: some View {
        Preview {
            MyCoinSection()
        }
    }
}
#endif
