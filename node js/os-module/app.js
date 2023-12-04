const os = require("os");

// info abt cirrent user
const user = os.userInfo();
console.log(user);

// returns the system uptime in seconds
console.log(`System Uptime ${os.uptime()} seconds`);

const currentOs = {
  name: os.type(),
  release: os.release(),
  totalMem: os.totalmem(),
  freeMEm: os.freemem(),
};
console.log(currentOs);
