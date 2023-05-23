function sleep(seconds) {
    return new Promise(resolve => setTimeout(resolve, seconds * 1000));
}


async function init() {
    while (true) {
        console.log("Message: ", process.env.TEST_VARS)
        await sleep(10);
    }
}

init()
