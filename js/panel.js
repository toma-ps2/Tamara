const addProduct = document.querySelector('input[type=submit]')


addProduct.addEventListener('click',(Event)=>{
    Event.preventDefault()
    // product - id в теге form
    let data = new FormData(product)

    // посмотреть все поля обьекта data
    // data.entries() - возвращает массив

    // перебор обьектов 
    //console.log(Object.values({name:'Alex',city:'Moscow'}))
    //console.log(Object.keys({name:'Alex',city:'Moscow'}))
    //console.log(Object.entries({name:'Alex',city:'Moscow'}))

    // for of - перебираем массив
    for (let [k,v] of data.entries())
    {
        //console.log(k,v)
    }


    fetch('handler.php',{
        method:'POST',
        body:data
    })
    .then(response=> response.text())
   
})