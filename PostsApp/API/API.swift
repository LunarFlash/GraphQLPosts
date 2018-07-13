//  This file was automatically generated and should not be edited.

import AWSAppSync

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost {\n  singlePost(id: 123) {\n    __typename\n    id\n    title\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("singlePost", arguments: ["id": 123], type: .object(SinglePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(singlePost: SinglePost? = nil) {
      self.init(snapshot: ["__typename": "Query", "singlePost": singlePost.flatMap { $0.snapshot }])
    }

    public var singlePost: SinglePost? {
      get {
        return (snapshot["singlePost"] as? Snapshot).flatMap { SinglePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "singlePost")
      }
    }

    public struct SinglePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}