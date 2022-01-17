module.exports = app => {
    const payments = require("../controllers/payment.controller.js");
    const count = require("../controllers/count.controller.js");
  
    var router = require("express").Router();
  
    // Create a new Payment
    router.post("/add", payments.create);
  
    // Retrieve all Payments
    router.get("/", payments.findAll);
  
    // Retrieve all published Payments
    // router.get("/published", payments.findAllPublished);

    router.get("/order/count", count.findAll);
  
    // Retrieve a single Payment with id
    router.get("/:id", payments.findOne);
  
    // Update a Payment with id
    router.put("/:id", payments.update);
  
    // Delete a Payment with id
    router.delete("/:id", payments.delete);
  
    // Delete all Payments
    router.delete("/", payments.deleteAll);
  
    app.use('/api/payments', router);
  };