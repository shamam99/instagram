//
//  MessyProfileView.swift
//  instagram
//
//  Created by Shamam Alkafri on 20/01/2025.
//

import SwiftUI

struct MessyProfileView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
            ScrollView {
                    VStack(spacing: 16) {
                        VStack(spacing: 8) {
                            HStack {
                                  Image("emoji")
                                    .resizable()
                                .scaledToFill()
                                    .frame(width: 80, height: 80)
                            .clipShape(Circle())
                                      .overlay(
                                        Circle()    .stroke(Color   .purple, lineWidth: 2)
                                    )
                            .shadow(radius: 3)
                                Spacer()
                                VStack {
                                    Text("15")
                                        .font(.headline)
                                    Text("Posts")
                                        .font(.caption)
                                }
                                  Spacer()
                                VStack {
                                    Text("7,547")
                                        .font(.headline)
                                    Text("Followers")
                                        .font(.caption)
                                }
                                Spacer()
                                VStack {
                                    Text("1")
                                        .font(.headline)
                                    Text("Following")
                                        .font(.caption)
                                }
                            }
                    .padding(.horizontal)
                            /*
                            HStack {
                                VStack(spacing: 2) {
                                    Text("15")
                                        .font(.headline)
                                    Text("Posts")
                                        .font(.caption2)
                                }
                                Spacer()
                                VStack(spacing: 2) {
                                    Text("7,547")
                                        .font(.headline)
                                    Text("Followers")
                                        .font(.caption2)
                                }
                                Spacer()
                                VStack(spacing: 2) {
                                    Text("1")
                                        .font(.headline)
                                    Text("Following")
                                        .font(.caption2)
                                }
                            }
                            .padding()
                            */
                            VStack(alignment: .leading, spacing: 4) {
                                Text("shamam.kafri")
                                    .font(.headline)
                                /*
                                Text("shamam.kafri")
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                */
                                Text("Adore Your self, and learn swift.")
                                    .font(.caption)
                                Text("Apple Academy")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        }
                        HStack {
                            Button(action: {}) {
                            Text("Following")
                                    .font(.subheadline)
                                .frame(maxWidth: .infinity)
                                    .padding(8)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                            }
                            Button(action: {}) {
                                Text("Message")
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity)
                                    .padding(8)
                                      .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                            }
                            Button(action: {}) {
                                  Image(systemName: "chevron.down")
                                    .font(.subheadline)
                                    .frame(width: 40, height: 40)
                        .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                        .padding(.horizontal)
                        /*
                        HStack {
                            Button(action: {}) { Text("Follow") }
                            Button(action: {}) { Text("Message") }
                            Image(systemName: "ellipsis")
                        }
                        */
                        ScrollView(.horizontal, showsIndicators: false) {
                                  HStack(spacing: 16) {
                                ForEach(0..<5) { _ in
                                VStack {
                                        Circle()
                                            .fill(Color.purple.opacity(0.2))
                                            .frame(width: 60, height: 60)
                                        Text("Highlight")
                                            .font(.caption)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        /*
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack {
                                ForEach(0..<10) { _ in
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        */
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())],  spacing: 8) {
                            ForEach(1...12, id: \.self) { index in
                                Rectangle()
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(height: 120)
                                    .overlay(
                                        Text("#\(index)")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    )
                            }
                        }
                        .padding(.horizontal)
                        /*
                        VStack {
                            ForEach(1...4, id: \.self) { _ in
                                HStack {
                                    ForEach(1...3, id: \.self) { _ in
                                        Rectangle()
                                            .frame(width: 100, height: 100)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                        */
                    }
                    .padding(.vertical)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                          .fill(Color.white)
                        .shadow(radius: 5)
                        .frame(height: 70)
                    HStack {
                        Spacer()
                    Image(systemName: "house.fill")
                        Spacer()
                    Image(systemName: "magnifyingglass")
                           Spacer()
                        Image(systemName: "plus.app")
                              Spacer()
                        Image(systemName: "heart")
                    Spacer()
                        Image(systemName: "person.crop.circle")
                    Spacer()
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 5)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                 ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                          Image(systemName: "chevron.left")
                        Text("shamam.kafri")
                            .font(.headline)
                    }
                }
                ToolbarItem(placement:   .navigationBarTrailing) {
                        HStack(spacing: 16) {
                        Image(systemName: "bell")
                            Image(systemName: "ellipsis")
                    }
                }
            }
        }
    }
}
struct MessyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MessyProfileView()
    }
}
