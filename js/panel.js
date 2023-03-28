const addProduct = document.querySelector('input[type=submit]')
const dropZone = document.querySelector('.drag_zone')
const successExt = ['png','webp','svg','jpg','jpeg','cdr']
const maxFileSize = 10 * 1024
const preview = document.querySelector('.drag_preview')



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

dropZone.addEventListener('dragenter', Event=>{
    Event.preventDefault();
    console.log('dragenter')
})
dropZone.addEventListener('dragleave', Event=>{
    Event.preventDefault();
    console.log('dragleave')
})
dropZone.addEventListener('dragover', Event=>{
    Event.preventDefault();
    console.log('dragover')
})
dropZone.addEventListener('drop', Event=>{
    Event.preventDefault();
    // console.log('drop')
    // console.log(Event)

    let files = Array.from(Event.dataTransfer.files)
    let errorFiles = []


    let successFiles = files.filter(file => {
        let getExt = file.name.split('.').at(-1)
        
        if (successExt.includes(getExt) && (Math.round (file.size/1024)) <= maxFileSize) return file

        errorFiles.push(file)
    });

    successFiles.map(file=>{
        let url = URL.createObjectURL(file)
        if (url)
        {
            preview.insertAdjacentHTML('afterbegin', 
            `<div class="main_item">
            <img src="${url}" class="drag_preview_item">
            <div class="close_item" onclick="closeImg()">x</div>
            </div>`)
        } 
    })
    // console.log(Event.dataTransfer.files)
})


function closeImg(){
    document.querySelector('.drag_preview_item').style.display = 'none'
    document.querySelector('.close_item').style.display = 'none'
}