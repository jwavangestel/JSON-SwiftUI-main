import SwiftUI
struct ContentView: View {
    
    @State var users: [User] = []

    var body: some View {
        List(users) { user in
          
            VStack {
            Text(user.name)
            Text(user.document.profiles[0].name)
            Text(user.document.profiles[0].item[0].name)
            Text(user.document.profiles[0].item[0].email)
            Text(user.document.profiles[0].item[1].name)
            Text(user.document.profiles[0].item[1].email)
        }

        }
            .onAppear {
                apiCall().getUsers { (users) in
                    self.users = users
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
