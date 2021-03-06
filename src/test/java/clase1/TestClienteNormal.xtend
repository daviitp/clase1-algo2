package clase1

import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertTrue
import static org.junit.jupiter.api.Assertions.assertFalse

@DisplayName("Dado un cliente normal...")
class TestClienteNormal {

	@DisplayName("...si no es moroso -> puede cobrar el siniestro")
	@Test
	def void unClienteNoMorosoPuedeCobrarSiniestro() {
		// Arrange
		val clienteNoMoroso = new Cliente
		// Act
		
		// Assert
		assertTrue(clienteNoMoroso.puedeCobrarSiniestro)
	}
	
	@DisplayName("...si es moroso -> no puede cobrar el siniestro")
	@Test
	def void unClienteMorosoNoPuedeCobrarSiniestro() {
		// Arrange
		val clienteMoroso = new Cliente
		// Act
		clienteMoroso.endeudarse(100)
		// Assert
		assertFalse(clienteMoroso.puedeCobrarSiniestro)
	}
}