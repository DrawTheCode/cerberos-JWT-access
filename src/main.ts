import express from 'express';
import { PORT } from './config/envs';

const app = express();

app.get('/', function (_req, res) {
  res.send('bhel,lo 🚀');
});

app.listen(PORT,()=>{
  console.log(`LOGIN SERVER PORT => ${PORT} 🛥️`);
});