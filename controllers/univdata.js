const db = require('../models');
const universe = db.univdata;

module.exports = {
    create : async (req, res) => {
        try{
            const data = await universe.create(req.body)
            res.json({
                message: "Planet created successfully!!",
                data: data,
            });
        } catch (err){
            res.status(500).json({
                message: err.message,
                data: null
            });
        }
    },
    getAll : async(req, res) => {
        try{
            const quizzes = await universe.findAll()
            res.json({
                message: "Planet Retrived Successfully!!!",
                data: quizzes,
            });
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    },
    update: async(req, res) => {
        const id = req.params.id
        try{
            const quiz = await universe.findByPk(id, {rejectOnEmpty: true})
            quiz.update(req.body, {
    
                where: {id}
            });
            res.json({
                message: "Planet Updated Successfully!!!",
                data: quiz,
            });
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    },
    delete : async(req, res) => {
        const id = req.params.id
        try{
            const quiz = await universe.findByPk(id, {rejectOnEmpty: true})
            quiz.destroy()
            res.json({
                message: "Planet Deleted Successfully!!!",
            });
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    },
    findOne : async(req, res) => {
        const id = req.params.id
        try{
            const quiz = await universe.findByPk(id, {rejectOnEmpty: true})
            res.json({
                message: `Planet Retrieved Successfully!!! with id: ${id}`,
                data: quiz,
            });
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    },
    getByCategoryId  : async(req, res) => {
        const id = req.params.id
        try{
            const quizzes = await universe.findAll({
                where:{
                    categoryId: id
                }
            })
            
            res.json({
                message: "Planet Deleted Successfully!!!",
                data: quizzes,
            })
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    },
    getByLevelId  : async(req, res) => {
        const id = req.params.id
        try{
            const quizzes = await universe.findAll({
                where:{
                    LevelId: id
                }
            })
            
            res.json({
                message: "Planet Deleted Successfully!!!",
                data: quizzes,
            })
        }catch(err){
            res.status(500).json({
                message: err.message || "Errors occurred while rerieving Planet",
                data: null
            });
        }
    }
}





// exports.create = async (req, res) => {
    //     try{
    //         const data = await Quiz.create(req.body)
    //         res.json({
    //             message: "Quiz created successfully!!",
    //             data: data,
    //         });
    //     } catch (err){
    //         res.status(500).json({
    //             message: err.message,
    //             data: null
    //         });
    //     }
    // };
    
    // exports.getAll = async(req, res) => {
    //     try{
    //         const quizzes = await Quiz.findAll()
    //         res.json({
    //             message: "Quizzes Retrived Successfully!!!",
    //             data: quizzes,
    //         });
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }
    
    // exports.update = async(req, res) => {
    //     const id = req.params.id
    //     try{
    //         const quiz = await Quiz.findByPk(id, {rejectOnEmpty: true})
    //         quiz.update(req.body, {
    
    //             where: {id}
    //         });
    //         res.json({
    //             message: "Quizzes Updated Successfully!!!",
    //             data: quiz,
    //         });
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }
    
    // exports.delete = async(req, res) => {
    //     const id = req.params.id
    //     try{
    //         const quiz = await Quiz.findByPk(id, {rejectOnEmpty: true})
    //         quiz.destroy()
    //         res.json({
    //             message: "Quizzes Deleted Successfully!!!",
    //         });
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }
    
    // exports.findOne = async(req, res) => {
    //     const id = req.params.id
    //     try{
    //         const quiz = await Quiz.findByPk(id, {rejectOnEmpty: true})
    //         quiz.destroy()
    //         res.json({
    //             message: `Quizzes Retrieved Successfully!!! with id: ${id}`,
    //             data: quiz,
    //         });
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }
    
    // exports.getByCategoryId  = async(req, res) => {
    //     const id = req.params.id
    //     try{
    //         const quizzes = await Quiz.findAll({
    //             where:{
    //                 categoryId: id
    //             }
    //         })
            
    //         res.json({
    //             message: "Quizzes Deleted Successfully!!!",
    //             data: quizzes,
    //         })
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }
    
    // exports.getByLevelId  = async(req, res) => {
    //     const id = req.params.id
    //     try{
    //         const quizzes = await Quiz.findAll({
    //             where:{
    //                 LevelId: id
    //             }
    //         })
            
    //         res.json({
    //             message: "Quizzes Deleted Successfully!!!",
    //             data: quizzes,
    //         })
    //     }catch(err){
    //         res.status(500).json({
    //             message: err.message || "Errors occurred while rerieving quiz",
    //             data: null
    //         });
    //     }
    // }