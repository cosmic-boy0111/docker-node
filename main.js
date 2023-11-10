const express = require('express');
const app = express();


const PORT = process.env.PORT || 8000;

app.get('/', (req,res)=>{
    return res.status(200).send({
        mesaage : 'Hey, I am nodejs in container v2'
    })
})

app.listen(PORT, () => {
    console.log(`Server started on port : ${PORT}`);
})