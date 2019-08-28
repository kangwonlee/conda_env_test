// https://www.tizag.com/javascriptT/javascriptcomment.php

const core = __importStar(require("@actions/core"))
const shell = require('shelljs')

function run() {
    yml = core.getInput('yml')
    // https://stackoverflow.com/a/44648086
    // https://stackoverflow.com/a/24850933
    shell.exec(`bash ./test.sh ${yml}`)
}
