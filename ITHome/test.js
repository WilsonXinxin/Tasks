// const Http = new XMLHttpRequest()
// const url = `https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=${new Date().getTime()}&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`
// Http.open("get", url)
// Http.open
// Http.send()

// Http.onreadystatechange=(e) =>{
//   console.log(Http.responseText);
// }

const axios = require('axios');
// // `https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=1687836641031&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`
// // `https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=1687846852448&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`
axios.get(`https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=${new Date().getTime()}&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`)
.then(res => {
    const { data } = res
    console.log(data);
})
.catch(err => {
    console.log('Error: ', err.message);
});

// const fetch = require("node-fetch")

// fetch(`https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=${new Date().getTime()}&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`, {
//     method: 'GET'
// })
// .then(async res => {
//     let { data } = await res.json()
//     console.log(data);
//     // data.forEach(item => {
//     //     console.log(`${chalk.yellow.bold(item.rank)}.${chalk.green(item.category_name)}`);
//     // })
// })
// .catch(err => {
//     console.log('Error: ', err.message);
// });


// console.log(`https://my.ruanmei.com/api/usersign/sign?userHash=9833688dcb027758546669f94699a31014476e08092e1fb4941295f0b91b37f4181fe763f3404c3e9ed982c2ec3099df&type=3&timestamp=${new Date().getTime()}&kbfbf3a2d1c611173=f82512c8f3f7948d2f160944305b31b9577702b5bb3815ce`);
