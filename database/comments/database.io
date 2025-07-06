// MongoDB

db.createCollection("comments", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["_id", "post_id", "user_id", "text", "created_at"],
      properties: {
        _id: {
          bsonType: "string",
          description: "Unique comment ID"
        },
        post_id: {
          bsonType: "string",
          description: "ID of the post the comment belongs to"
        },
        user_id: {
          bsonType: "string",
          description: "ID of the user who wrote the comment"
        },
        text: {
          bsonType: "string",
          description: "Comment text"
        },
        created_at: {
          bsonType: "date",
          description: "Timestamp of comment creation"
        }
      }
    }
  }
});

db.post_likes.createIndex({ post_id: 1 });

+ Redis в качестве кэша
