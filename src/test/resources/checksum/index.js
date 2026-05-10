const jwt = require('jsonwebtoken');
const { createHash } = require('crypto');
const express = require('express');

const app = express ();
app.use(express.json());
const PORT = 3012;
const key = "65iVBp3bBXS1OKJwyd1eGGS2KLsVQQm0";

app.listen(PORT, () => {
    console.log("Server Listening on PORT:", PORT);
});

app.post("/checksum", (request, response) => {
    const payload = request.body;
    const jsonString = JSON.stringify(payload); 
    const hash = createHash('sha256').update(jsonString).digest('hex');
    const signedHash = jwt.sign({hash}, key);
    const token = {token: signedHash}
    response.json(signedHash);
});



