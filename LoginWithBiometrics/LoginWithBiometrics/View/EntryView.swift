//
//  EntryView.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

struct EntryView: View {
    
    let entry: Entry
    @Environment(\.self) var env
    @Environment(\.managedObjectContext) var moc
    @StateObject var entryModel: EntryModel = .init()
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 20){
                HStack {
                    Image(systemName: "arrow.left")
                        .onTapGesture {
                            env.dismiss()
                        }
                    Spacer()
                    Text(entry.title ?? "")
                        .bold()
                    Spacer()
                    Image(systemName: "trash")
                        .onTapGesture {
                                moc.delete(entry)
                                env.dismiss()

                        }
                        .padding(.trailing, 10)
                    Image(systemName: "pencil")
                        .onTapGesture {
                            entryModel.editEntry = entry
                            entryModel.restoreEditData()
                            entryModel.addNewEntry.toggle()
                        }
                }
                .foregroundColor(Color("Red"))
                .fontWeight(.bold)
                
                Text(entry.title ?? "")
                    .font(Font.system(size: 40, weight: .regular))
                    .foregroundColor(Color("Red"))
                    .padding()
                    .padding(.horizontal)
                
                Text(entry.body ?? "")
                    .foregroundColor(Color("Red"))
            }
            .padding(30)
            .navigationBarBackButtonHidden(true)
            .sheet(isPresented: $entryModel.addNewEntry) {
                AddNewView()
                    .environmentObject(entryModel)
            }
        }
        
    }
}
