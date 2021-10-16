
class Persona{
    constructor(nombre, apellido){
        this.nombre=nombre
        this.apellido=apellido
    }

    mostrarNombre(){
        return this.nombre
    }
}

let nombre = prompt("Escribe tu nombre")
let persona1 = new Persona(nombre, "Navas")
let persona2 = new Persona("Regulo", "Luna")

console.log(persona1.mostrarNombre)
console.log(persona2.mostrarNombre)