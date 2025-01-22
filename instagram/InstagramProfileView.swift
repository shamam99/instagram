//
//  ContentView.swift
//  instagram
//
//  Created by Shamam Alkafri on 20/01/2025.
//

import SwiftUI

struct InstagramProfileView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) { // Main container for all content
                
                // Scrollable content for the profile
                ScrollView {
                    VStack(spacing: 16) { // Stacks all sections vertically
                        
                        // Profile header with picture, stats, and bio
                        VStack(spacing: 8) {
                            
                            // Profile picture and stats (posts, followers, following)
                            HStack {
                                Image("emoji") // Profile picture placeholder
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80) // Circle size
                                    .clipShape(Circle()) // Makes it circular
                                    .overlay(Circle().stroke(Color.purple, lineWidth: 2)) // Purple border
                                    .shadow(radius: 3) // Shadow effect
                                
                                Spacer() // Adds space between stats
                                
                                VStack { // Posts count
                                    Text("15")
                                        .font(.headline) // Big font for numbers
                                    Text("Posts")
                                        .font(.caption) // Smaller label
                                }
                                Spacer()
                                
                                VStack { // Followers count
                                    Text("7,547")
                                        .font(.headline)
                                    Text("Followers")
                                        .font(.caption)
                                }
                                Spacer()
                                
                                VStack { // Following count
                                    Text("1")
                                        .font(.headline)
                                    Text("Following")
                                        .font(.caption)
                                }
                            }
                            .padding(.horizontal)
                            
                            // User name and bio section
                            VStack(alignment: .leading, spacing: 4) {
                                Text("shamam.kafri") // User name
                                    .font(.headline)
                                Text("Adore Your self, and learn swift.") // Short bio
                                    .font(.caption)
                                Text("Apple Academy") // User's affiliation
                                    .font(.caption)
                                    .foregroundColor(.gray) // Lighter text color
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Aligns to the left
                            .padding(.horizontal)
                            
                            // Buttons for following, messaging, and options
                            HStack {
                                Button(action: {}) { // Following button
                                    Text("Following")
                                        .font(.subheadline)
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                        .background(Color.gray.opacity(0.2)) // Light gray background
                                        .cornerRadius(8) // Rounded corners
                                }
                                Button(action: {}) { // Message button
                                    Text("Message")
                                        .font(.subheadline)
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                }
                                Button(action: {}) { // Dropdown icon
                                    Image(systemName: "chevron.down")
                                        .frame(width: 40, height: 40)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        // Horizontal scroll for highlights
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) { // Space between highlights
                                ForEach(0..<5) { _ in // Loops 5 times
                                    VStack {
                                        Circle()
                                            .fill(Color.purple.opacity(0.2)) // Light purple background
                                            .frame(width: 60, height: 60) // Circle size
                                        Text("Highlight") // Highlight title
                                            .font(.caption)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        // Post grid with 3 posts per row
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                            ForEach(1...12, id: \.self) { index in // 12 placeholder posts
                                Rectangle()
                                    .fill(Color.gray.opacity(0.2)) // Light gray placeholder
                                    .frame(height: 120) // Fixed height
                                    .overlay(
                                        Text("#\(index)") // Post number
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    )
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.vertical)
                }
                
                // Bottom navigation bar
                ZStack {
                    RoundedRectangle(cornerRadius: 20) // Rounded background
                        .fill(Color.white)
                        .shadow(radius: 5) // Shadow effect
                        .frame(height: 70) // Fixed height
                    
                    // Navigation icons
                    HStack {
                        Spacer()
                        Image(systemName: "house.fill") // Home icon
                            .font(.title2)
                        Spacer()
                        Image(systemName: "magnifyingglass") // Search icon
                            .font(.title2)
                        Spacer()
                        Image(systemName: "plus.app") // Add post icon
                            .font(.title2)
                        Spacer()
                        Image(systemName: "heart") // Likes icon
                            .font(.title2)
                        Spacer()
                        Image(systemName: "person.crop.circle") // Profile icon
                            .font(.title2)
                        Spacer()
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 5) // Adds space for the safe area
            }
            .navigationBarTitleDisplayMode(.inline) // Keeps the title inline
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "chevron.left") // Back button
                        Text("shamam.kafri") // Title
                            .font(.headline)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Image(systemName: "bell") // Notifications
                        Image(systemName: "ellipsis") // More options
                    }
                }
            }
        }
    }
}

struct InstagramProfileView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramProfileView()
    }
}
