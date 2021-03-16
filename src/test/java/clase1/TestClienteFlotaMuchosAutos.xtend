package clase1

import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test
import static org.junit.jupiter.api.Assertions.assertFalse
import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Dado un cliente de flota con muchos autos...")
class TestClienteFlotaMuchosAutos {
	
	@Test
	@DisplayName("si está muy endeudado -> no puede cobrar el siniestro")
	def clienteMuyEndeudadoNoPuedeCobrarSiniestro() {
		// Arrange
		val flotaConMuchosAutos = new Flota => [
			autos = 6
			endeudarse(10001)
		]

		// Act
		//Assert
		assertFalse(flotaConMuchosAutos.puedeCobrarSiniestro, "Una flota con muchos autos y mucha deuda no debería poder cobrar siniestro")
	}
	
	@Test
	@DisplayName("si no está muy endeudado -> puede cobrar el siniestro")
	def void clienteNoMuyEndeudadoPuedeCobrarSiniestro() {
		// Arrange
		val flotaConMuchosAutos = new Flota => [
			autos = 6
			]

		// Act

		flotaConMuchosAutos.endeudarse(Flota.MAXIMO_FLOTA_MUCHOS_AUTOS + 1)

		//Assert
		assertTrue(flotaConMuchosAutos.puedeCobrarSiniestro, "Una flota con muchos autos y poca deuda debería poder cobrar siniestro")
	}
}