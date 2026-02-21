
import SwiftUI

struct statusBarView: View {
   var body: some View {
       HStack{
           Text("10:58")
               .bold()
           Spacer()
           HStack(spacing:1){
               Image(systemName:"ellipsis")
                   .offset(y:5)
                   .foregroundStyle(.secondary)
               Image(systemName:"wifi")
               Image(systemName:"battery.100percent")
           }
           .font(.subheadline)
           .font(.system(size:5))
       }
       .padding(.horizontal, 45)
       .foregroundStyle(Color(.label))
   }
}
