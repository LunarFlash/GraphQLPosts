//
//  Constants.swift
//  PostsApp
//

import Foundation
import AWSCore
import AWSAppSync

// The API Key for authorization
let StaticAPIKey = "da2-7g7pfuufnvdgtosdie4l5txh4y"
//let CognitoIdentityPoolId = ""
//let CognitoIdentityRegion: AWSRegionType = .USEast1
let AppSyncRegion: AWSRegionType = .USEast1
let AppSyncEndpointURL: URL = URL(string: "https://7kytgep6mzf7teopygslxlkxlu.appsync-api.us-east-1.amazonaws.com/graphql")!
let database_name = "Posts"

class APIKeyAuthProvider: AWSAPIKeyAuthProvider {
    func getAPIKey() -> String {
        // This function could dynamicall fetch the API Key if required and return it to AppSync client.
        return StaticAPIKey
    }
}
