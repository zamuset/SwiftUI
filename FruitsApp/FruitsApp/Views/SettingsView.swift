//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Samuel Chavez on 28/12/22.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false

  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {

          // MARK: - SECTION 1
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
          ) {
            Divider()
              .padding(.vertical, 4)

            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width:80, height: 80)
                .cornerRadius(9)

              Text("Most fruits are naturally low in fat, sodium and calores. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          // MARK: - SECTION 2
          GroupBox(
            label:
              SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)

            Text("If you wish, you can restart the application by toggling the switch in this box. That will show the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)

            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(.secondary)
              }
            }
            .padding()
            .background(Color(UIColor.tertiarySystemBackground)
              .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )

          }
        }

        // MARK: - SECTION 3
        GroupBox(
          label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
        ) {

          SettingsRowView(name: "Developer", content: "Samu")
          SettingsRowView(name: "Designer",  content: "Samu")
          SettingsRowView(name: "Compatibility",  content: "iOS 15+")
          SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "https://github.com/zamuset")
          SettingsRowView(name: "SwiftUI",  content: "2.0")
          SettingsRowView(name: "Version",  content: "1.1.0")
        }

      }
      .navigationBarTitle(Text("Settings"), displayMode: .large)
      .navigationBarItems(
        trailing:
          Button(action: {
            presentationMode.wrappedValue.dismiss()
          }, label: {
            Image(systemName: "xmark")
          })
      )
      .padding()
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
  }
}
