// MongoDB

db.createCollection("posts", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["_id", "user_id", "text", "created_at"],
      properties: {
        _id: {
          bsonType: "string",
          description: "Unique post ID"
        },
        user_id: {
          bsonType: "string",
          description: "ID of the user who created the post"
        },
        text: {
          bsonType: "string",
          description: "Post content"
        },
        created_at: {
          bsonType: "date",
          description: "Timestamp of post creation"
        },
        images: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["id", "url"],
            properties: {
              id: {
                bsonType: "string",
                description: "UUID of the image"
              },
              url: {
                bsonType: "string",
                description: "Image URL"
              }
            }
          },
          description: "Optional list of images"
        },
        location: {
          bsonType: "object",
          required: ["latitude", "longitude"],
          properties: {
            latitude: {
              bsonType: "double"
            },
            longitude: {
              bsonType: "double"
            }
          },
          description: "Optional geo coordinates"
        }
      }
    }
  }
});

db.post_likes.createIndex({ user_id: 1 });

+ Redis в качестве кэша для ленты
