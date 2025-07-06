// MongoDB

db.createCollection("post_likes", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["user_id", "post_id", "created_at"],
      properties: {
        user_id: {
          bsonType: "string",
          description: "ID пользователя, поставившего лайк"
        },
        post_id: {
          bsonType: "string",
          description: "ID поста, которому поставили лайк"
        },
        created_at: {
          bsonType: "date",
          description: "Дата и время лайка"
        }
      }
    }
  }
});

db.post_likes.createIndex({ user_id: 1 });
db.post_likes.createIndex({ post_id: 1 });

+ Redis в качестве кэша
