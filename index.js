const express = require('express')
const app = express()

const PORT = process.env.PORT || 8000

app.get('/', (req, res) => {
	return res.json({ msg: "Hello Node App" })
})

app.listen(PORT,()=> console.log(`App served on : http://localhost:${PORT}`))
