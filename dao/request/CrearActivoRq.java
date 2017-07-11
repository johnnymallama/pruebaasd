package pruebaasd.dao.request;

import pruebaasd.dao.request.dto.TipoActivoDto;
import pruebaasd.dao.request.dto.EstadoActivoDto;

public class CrearActivoRq {

	private String nombre;

	private String descripcion;

	private String serial;

	private int numeroInterno;

	private float peso;

	private float alto;

	private float ancho;

	private float largo;

	private XmlGregorianCalendar fechaCompra;

	private XmlGregorianCalendar fechaBaja;

	private float valorCompra;

	private TipoActivoDto tipoActivo;

	private EstadoActivoDto estadoActivo;

}
