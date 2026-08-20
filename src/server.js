const { serve } = require('@hono/node-server');
const app = require('./app');

const port = Number(process.env.PORT) || 5432;

serve({
  fetch: app.fetch,
  port,
  hostname: '0.0.0.0', // 👈 これを追加するのがRenderでは必須です！
}, (info) => {
  console.log(`Server running at http://${info.address}:${info.port}/`);
});