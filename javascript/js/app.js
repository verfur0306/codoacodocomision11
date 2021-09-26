//alert("Hola Mundo!")
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

        if(25 >= 32 || 120 > 20){
            console.log('se cumplio la condicion')
        };

        let saludo = "Hola Como estas? "
        let saludar = saludo + nombre

        let elemento = document.getElementById("principal");
        //console.log(elemento)
        elemento.innerHTML="<h1 class='text-center bg-light'>" + saludar + "</h1>";
        
        //tb se puede hacer document.write 
        document.write("<h1 class='text-center bg-info'>" + saludar + "</h1>")

        /*let mensaje = prompt("Menú \n 1.Papas fritas \n 2. milanesas con fritas \n 3. Napolitana");
        console.log(mensaje)

         if(mensaje === "1"){
            elemento.innerHTML="<p>Disfruta de tus papas</p>";
        } 
        else if(mensaje === "2"){
            elemento.innerHTML="<p>Disfruta de tu milanesa con fritas</p>";
        }
        else if(mensaje === "3"){
            elemento.innerHTML="<p>Disfruta de tu milanesa napolitana</p>";
        }
        else{
            elemento.innerHTML="<p>El valor tipeado no es una opción</p>";
        }
        

        switch(mensaje){
            case "1":
                elemento.innerHTML="<p>Disfruta de tus papas</p>";
                break
            case "2":
                 elemento.innerHTML="<p>Disfruta de tu milanesa con fritas</p>";
                break
            case "3":
                 elemento.innerHTML="<p>Disfruta de tu milanesa napolitana</p>";
                break
            default:
                elemento.innerHTML="<p>El valor tipeado no es una opción</p>"
                let mensaje = prompt("Menú \n 1.Papas fritas \n 2. milanesas con fritas \n 3. Napolitana");
            }
            */
           
            let num = parseInt(prompt("ingresa el primer numero"))
            let num2 = parseInt(prompt("ingresa el segundo numero"))

            let resultado = "<p>El resultado de " + num + " y " + num2 + " es: " + (num +num2)+ "</p>";
            
            elemento.innerHTML=resultado;



