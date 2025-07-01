// MongoDB

db.createCollection("subscriptions", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["_id", "user_id", "target_user_id", "created_at"],
      properties: {
        _id: {
          bsonType: "string",
          description: "ID подписки"
        },
        user_id: {
          bsonType: "string",
          description: "ID пользователя, который подписывается"
        },
        target_user_id: {
          bsonType: "string",
          description: "ID пользователя, на которого подписываются"
        },
        created_at: {
          bsonType: "date",
          description: "Дата подписки"
        }
      }
    }
  }
});

db.post_likes.createIndex({ user_id: 1 });

+ Redis в качестве кэша
