package pruebaasd;

import pruebaasd.dao.response.ResponseGeneral;
import pruebaasd.dao.request.CrearActivoRq;
import pruebaasd.dao.request.ActualizarActivoRq;

public interface Activo {

	public abstract ResponseGeneral CrearActivo(CrearActivoRq crearActivo);

	public abstract ResponseGeneral ActualizarActivo(ActualizarActivoRq actualizarActivo);

	public abstract ResponseGeneral BuscarTodo();

	public abstract ResponseGeneral BuscarActivoTipo(String tipoActivo);

	public abstract ResponseGeneral BuscarActivoFechaCompra(XmlGregorianCalendar fecha);

	public abstract ResponseGeneral BuscarActivoSerial(String serial);

}
