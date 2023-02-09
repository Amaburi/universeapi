const db = require("../models");
const Quiz = db.universes;

exports.submitOne = async (req, res) => {
    const jobsheet = {
        quizId: req.body.quizId,
        answer: req.body.answer
    };

    try{
        var quiz = await Quiz.findOne({
            where:{
                id: req.body.quizId
            }
        });

        if(req.body.answer == quiz.key){
            res.status(200).json({
                "message": "CORRECT"
            })
        }else{
            res.status(200).json({
                "message": `CORRECT ANSWER IS ${quiz.key}` 
            })
        }
    }catch(err){
        res.status(500).json({ message: err.message});
    }
}

exports.submitMany = async(req, res)=>{
    const jobsheet = {
        quizId: req.body.quizId,
        answer: req.body.answer
    };

    try{
        let benar = 0
        let totalSoal = jobsheet.quizId.length
        for( let i = 0; i < totalSoal ; i++){
            const quiz = await Quiz.findOne({
                limit: 1,
                where:{
                    id: jobsheet.quizId[i]
                },
                order: [['id', 'DESC']],
            });
            if(quiz.key == jobsheet.answer.answer[i]){
                benar = benar + 1
            }
        }
        res.status(200).json({
            message: `benar ${benar} dari ${totalSoal} soal`
        })
    } catch(err){
        res.status(500).json({ message: err.message})
    }
}