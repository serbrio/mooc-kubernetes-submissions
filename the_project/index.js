const Koa = require('koa')
const app = new Koa()
const PORT = process.env.PORT || 5000

app.use(async ctx => {
  dateString = Date();
  ctx.body = `Hello from port ${PORT}!\n ${dateString}`; 
});

app.listen(PORT, () => {
  console.log(`Server started in port ${PORT}`)
})
