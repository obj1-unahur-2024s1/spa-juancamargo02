object olivia {
	
	var concentracion = 6
	
	method recibirMasajes() {
		concentracion += 3
	}
	
	method discute() {
		concentracion = 0.max(concentracion - 1)
	}
	
	method recibirBanioVapor() {
		concentracion += 2
	}
	
	method gradoDeConcentracion() = return concentracion
}

object bruno {
	
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasajes() {
		estaFeliz = true
	}
	
	method recibirBanioVapor() {
		peso = 0.max(peso - 500)
		tieneSed = true
	}
	
	method tomarAgua() {
		tieneSed = false
	}
	
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	
	method correr() {
		peso = 0.max(peso - 300)
	}
	
	method verNoticiero() {
		estaFeliz = false
	}
	
	method estaPerfecto() {
		return (estaFeliz and !tieneSed and peso.between(50000, 70000))
	}
	
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
	
}

object ramiro {
	
	var contractura = 0
	var tienePielGrasosa = false
	
	method recibirMasajes() {
		contractura = 0.max(contractura - 2) 
	}
	
	method recibirBanioVapor() {
		tienePielGrasosa = false
	}
	
	method comerBigMac() {
		tienePielGrasosa = true
	}
	
	method bajarLaFosa() {
		tienePielGrasosa = true
		contractura += 1
	}
	
	method jugarAlPaddle() {
		contractura += 3
	}
	
	method diaDeTrabajo() {
		self.bajarLaFosa()
		self.comerBigMac()
		self.bajarLaFosa()
	}
	
}

object spa {
	
	method atender(persona) {
		persona.recibirMasajes()
		persona.recibirBanioVapor()
	}
	
}