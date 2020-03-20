module.exports = (sequelize, DataTypes) => {
    const Post = sequelize.define(
        'Post',
        {
            userId: DataTypes.INTEGER,
            title: DataTypes.STRING,
            post: DataTypes.STRING,
            slug: DataTypes.STRING,
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
