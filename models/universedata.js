module.exports = (sequelize, Sequelize) => {
    const univdata = sequelize.define('universedata',{
        description:{
            type: Sequelize.STRING(1234),
        },
        Planet: {
            type: Sequelize.STRING,
        },
        imagename: {
            type: Sequelize.STRING,
        }
    });
    return univdata;
}