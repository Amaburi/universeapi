module.exports = (sequelize, Sequelize) => {
    const univdata = sequelize.define('universedata',{
        description:{
            type: Sequelize.STRING,
        },
        Planet: {
            type: Sequelize.STRING,
        },
    });
    return univdata;
}