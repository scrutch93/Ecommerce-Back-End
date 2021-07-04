const { Model, DataTypes } = require('sequelize');

const sequelize = require('../config/connection.js');

class Category extends Model {}

Category.init(
  {
    // define columns
    id: {
    type: DataType.INTEGER,
    allowNull: false,
    primaryKey: true,
    autoincrement: true,
    },

    category_name: {
      type: DATATYPE.STRING,
      allowNull: false,

  

  },
},
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: 'category',
  }
);

module.exports = Category;
