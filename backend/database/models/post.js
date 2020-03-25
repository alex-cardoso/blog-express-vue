module.exports = (sequelize, DataTypes) => {
    const Post = sequelize.define(
        'Post',
        {
            title: DataTypes.STRING,
            slug: DataTypes.STRING,
            userId: DataTypes.INTEGER,
            categoryId: DataTypes.INTEGER,
            post: DataTypes.TEXT,
            image: DataTypes.STRING,
        },
        {}
    );
    Post.associate = function(models) {
        Post.belongsTo(models.User, {
            foreignKey: 'userId',
            as: 'user',
            onDelete: 'CASCADE',
        });
    };
    return Post;
};
