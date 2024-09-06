object salaNumerada {

    var sonido = estandar
    const entradaBase = 8000

    method precioEntrada() = entradaBase + sonido.adicional(self) 

    method sonido(algo){
        sonido = algo
    }
    method asientos() = 240
}


object salaNoNumerada {

    var sonido = estandar
    const entradaBase = 9000
    const precioAsiento = 1 
    var asientos = 50

    method precioEntrada() =
        (entradaBase - asientos * precioAsiento + sonido.adicional(self)).min(10000).max(0)


    method sonido(algo){
        sonido = algo
    }
    
    method variarAsientos(cantidad){
        asientos = asientos + cantidad
    }
   method asientos() = asientos
    
}



object qwert{

    method adicional(sala) = sala.asientos()*13
}

object dolby{
   method adicional(sala) = if (sala.asientos() < 150) 1000 else 2000
}

object estandar{
    method adicional(_) = 0
}