const express =require("express")//web서버 사용
const app =express();//express에서 실행한 내용을 app에 담음
const path = require("path")

// web서버 생성
console.log(__dirname)
app.use(express.static(path.join(__dirname,"resources")))
const port = process.env.port || 1521; // 서버실행
app.listen(port,()=>
   console.log('server running ${port}')
) // .listen (실행,명령어) 

//socket 접속
const http =require("http");
const server = http.createServer(app)
const socketIO = require("socketio")

const io = socketIO(server)

io.on("connection",(Socket)=>{
  console.log ("연결")  
}
)

console.log('hello')