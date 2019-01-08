const Express = require('express');
const path = require('path');
const fs = require('fs');

const app = Express();
// Get variable(s) from ENV
const port = process.env.PORT || 3000;
const pathName = process.env.PATH_NAME || path.join(__dirname, '../static');

app.use(Express.static(pathName, { dotfiles: 'allow' } ));

app.listen(port, (error) => {
  if (error) {
    console.error(error);
  } else {
    console.info('==> 🎉 Listening on port %s. Open up http://localhost:%s/ in your browser. 🎉', port, port);
  }
});