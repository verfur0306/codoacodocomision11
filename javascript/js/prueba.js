//let container = document.getElementById("seccion")


var opcion= prompt('Elige tu opcion E=estudiante T=trainee J=junior')

  console.log(opcion)

  if (opcion==='E'){
    let precio=(200*0.2)
    document.write('Te corresponde pagar $' +precio)

}else if (opcion==='T'){
    let precio=(200*0.50)
    document.write('Te corresponde pagar $' +precio)

}else if(opcion==='J'){
    let precio=(200*0.85)
    document.write('Te corresponde pagar $' +precio)
}


//const comprarTicket=()=>{
//    container.innerHTML= `<div class= "container">
//<div class= "row">
//<div class="form-group col-6 col-md-6 m-1"> 
  //                              <label for="">Categoría</label>
    //                            <select class="form-select" id="inputSelect"> 
      //                              <option value="estudiante">Estudiante</option>
        //                            <option value="trainee">Trainee</option>
          //                          <option value="junior">Junior</option>
            //                    </select>
              //              </div>
                //            </div>
                  //          </div>

//`}