const app = require('./app');
const db = require('./config/db');


const port = 100;

app.get('/', (req,res)=>{
    res.send("API connected");
})

app.listen(port,()=>{
    console.log(`server listing on http://localhost:${port}`);
})