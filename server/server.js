const express = require('express');
const apiRouter = require('./routes');
const app = express();
app.use(express.json());
app.use('/api/bands', apiRouter);
app.listen(process.env.PORT || '3000', () => {
    console.log('I think the server is running on port 3000');
});
