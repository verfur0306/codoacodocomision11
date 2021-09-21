alert("Hola Mundo!")
        console.log("Estamos en la consola")
        //variables//
        let nombre= "Vero Furlan";//tipo string//
        var numero= 10; //numerica//
        const PI=3.14; //constante//
        let hayclases=0 //booleana//
        let esferiado=true
        console.log((numero+25+" "+nombre)) //concatenacion//
        console.log(hayclases) 
        if(5>8){
            console.log("es correcto")
        }else{
            console.log("No es correcto")
        }
        if(hayclases == true && esferiado != true){
            console.log("me conecto a la videollamada")
        }else{
            console.log("no me conecto")
        }
        if(25 > 32 || 120 > 20){
            console.log('se cumplio la condicion')
        };

        let saludo = "Hola Como estas? "
        let saludar = saludo + nombre

        let elemento = document.getElementById("principal");
        //console.log(elemento)
        elemento.innerHTML= "<h1 class='text-center'>" + saludar + "</h1>"