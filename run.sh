echo "=== run.sh started ==="
npx prisma db push
npx prisma generate
echo "=== starting node server ==="
node src/server.js