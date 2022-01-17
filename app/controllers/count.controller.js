const { user } = require("../models");
const Payment = require("../models/payment.model");
// const User = require("../models/user.model");


exports.allAccess = (req, res) => {
res.status(200).send("Public Content.");
};

exports.userBoard = async(req, res) => {
try {
    const u = await user.count()
    return res.json(u)
}catch(error){
    return res.send(error)
}

};

exports.findAll = async(req, res) => {
    Payment.countAll((err, data) => {
        if (err)
          res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving products."
          });
        else res.send(data[0]);
      });

};

exports.adminBoard = (req, res) => {
res.status(200).send("Admin Content.");
};

exports.moderatorBoard = (req, res) => {
res.status(200).send("Moderator Content.");
};
  
