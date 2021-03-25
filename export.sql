DROP TABLE Cgrupo;
CREATE TABLE Cgrupo
 (
	id			int (4), 
	nom_Grupo			varchar (20), 
	desc			varchar (100), 
	IP_ADD1			varchar (50), 
	IP_PORT1			int (4), 
	IP_ADD2			varchar (50), 
	IP_PORT2			int (4), 
	IP_ADD3			varchar (50), 
	IP_PORT3			int (4), 
	HrsDif			float (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE Compania;
CREATE TABLE Compania
 (
	Cod_cia			varchar (10), 
	Descri			varchar (50), 
	Direcc			varchar (70), 
	Titulo			varchar (50), 
	ComPort			int (1), 
	IP_ADD1			varchar (50), 
	IP_PORT1			int (4), 
	IP_ADD2			varchar (50), 
	IP_PORT2			int (4), 
	IP_ADD3			varchar (50), 
	IP_PORT3			int (4), 
	grupo			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE Conductores;
CREATE TABLE Conductores
 (
	codigo			int (2), 
	Cedula			varchar (10), 
	Nombres			varchar (40), 
	FN			date (8), 
	Teléfonos			varchar (30), 
	Dirección			varchar (255), 
	Clave			int (2), 
	Activo			char, 
	grupo			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE control;
CREATE TABLE control
 (
	serial			varchar (50), 
	placas			varchar (50), 
	fecha			date (8), 
	rumbo			int (2), 
	vel			int (1), 
	n_vel			int (2), 
	n_par			int (2), 
	n_pta			int (2), 
	n_acel			int (2), 
	n_fren			int (2), 
	n_gs			int (2), 
	n_puntos			int (2), 
	status			int (1), 
	lat			varchar (9), 
	lon			varchar (10), 
	evento			int (1), 
	subtipo			int (1), 
	mensaje			varchar (160), 
	conductor			int (2), 
	grupo			int (4), 
	indice			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE eventos;
CREATE TABLE eventos
 (
	Fecha			date (8), 
	Serial			int (4), 
	Lat			float (4), 
	Lon			float (4), 
	Ano_Mes			int (1), 
	Dia_Hora			int (1), 
	Hora_Min			int (1), 
	magnitud			int (1), 
	Cond_IOs			int (1), 
	Lo_Cond			int (1), 
	GSM_Tipo			int (1), 
	Otros			int (1), 
	indice			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE FrenadasBruscas;
CREATE TABLE FrenadasBruscas
 (
	Cod_Viaje			int (4), 
	FechaHora			date (8), 
	Vel1			int (1), 
	Vel2			int (1), 
	Vel3			int (1), 
	Vel4			int (1), 
	Vel5			int (1), 
	Vel6			int (1), 
	Vel7			int (1), 
	Vel8			int (1), 
	Vel9			int (1), 
	Vel10			int (1), 
	Vel11			int (1), 
	Vel12			int (1), 
	Vel13			int (1), 
	Vel14			int (1), 
	Vel15			int (1), 
	Vel16			int (1), 
	Rbo1			int (2), 
	Rbo2			int (2), 
	Rbo3			int (2), 
	Rbo4			int (2), 
	Rbo5			int (2), 
	Rbo6			int (2), 
	Rbo7			int (2), 
	Rbo8			int (2), 
	Rbo9			int (2), 
	Rbo10			int (2), 
	Rbo11			int (2), 
	Rbo12			int (2), 
	Rbo13			int (2), 
	Rbo14			int (2), 
	Rbo15			int (2), 
	Rbo16			int (2)

);
-- CREATE ANY INDEXES ...

DROP TABLE Mapas;
CREATE TABLE Mapas
 (
	Codigo			int (4), 
	Lat			float (8), 
	Lon			float (8), 
	Distancia			int (4), 
	Nombre			varchar (100)

);
-- CREATE ANY INDEXES ...

DROP TABLE Puntos;
CREATE TABLE Puntos
 (
	Cod_Viaje			int (4), 
	Vel			int (1), 
	Evento			int (1), 
	Fecha			date (8), 
	Lat			varchar (9), 
	Lon			varchar (10), 
	sub_evento			int (1), 
	conductor			int (2), 
	HDOP			int (1), 
	SAT			int (1), 
	GSM			int (1), 
	IOs			int (1), 
	Rumbo			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE Relacion;
CREATE TABLE Relacion
 (
	idZona			int (2), 
	idVehiculo			int (1)

);
-- CREATE ANY INDEXES ...

DROP TABLE Setting;
CREATE TABLE Setting
 (
	Puerto			varchar (1), 
	Velocidad			varchar (6), 
	Modem			varchar (1), 
	TimeOut			varchar (2), 
	LIM_VEL			int (1), 
	LIM_GS			int (1), 
	LIM_ACE			int (1), 
	LIM_DES			int (1), 
	LIM_RPM			int (1), 
	LIM_TEMP			int (1), 
	LIM_PREA			int (1), 
	LIM_BAT			int (1), 
	DIST_REPR			int (1), 
	TIEM_PAR			int (1), 
	TALARMA			int (1), 
	LIM_TACE			int (1), 
	LIM_TTRA			int (1), 
	HRS_DIFF			int (1), 
	SEG_GRACIA			int (1), 
	VEL_SEGURA			int (1), 
	SIR1			int (1), 
	SIR2			int (1), 
	SMS1			int (1), 
	SMS2			int (1), 
	BIT1			int (1), 
	BIT2			int (1), 
	Rep_Ori			int (1), 
	Tmp_Aux1			int (1), 
	Tmp_Aux2			int (1), 
	Tmp_Aux3			int (1), 
	SIR3			int (1), 
	SMS3			int (1), 
	ALTA			int (1), 
	DIST1_REP			int (4), 
	DIST2_REP			int (4), 
	TIEM_REP			int (2), 
	ALIAS			varchar (10), 
	Telf1			varchar (16), 
	Telf2			varchar (16), 
	Telf3			varchar (16), 
	Telf4			varchar (16), 
	Telf5			varchar (16), 
	Telf6			varchar (16), 
	Telf7			varchar (16), 
	Telf8			varchar (16), 
	Clave_A			varchar (8), 
	numero			int (2), 
	serial			int (4), 
	num_cyl			varchar (10), 
	To_Address			int (2), 
	sms_init			varchar (32), 
	DistParking			int (1), 
	Rep_Otros			int (1), 
	Rep_INTERNET			int (1), 
	APN_SER1			varchar (32), 
	APN_SER2			varchar (32), 
	LogIn_SER1			varchar (16), 
	LogIn_SER2			varchar (16), 
	Clave_SER1			varchar (12), 
	Clave_SER2			varchar (12), 
	DOMINIO_SER1			varchar (48), 
	DOMINIO_SER2			varchar (48), 
	Puerto_SER1			varchar (6), 
	Puerto_SER2			varchar (6), 
	DNS1			varchar (32), 
	DNS2			varchar (32), 
	Otros_Internet			int (1), 
	Rep_Zona			int (1), 
	Rep_Periodicos			int (1)

);
-- CREATE ANY INDEXES ...

DROP TABLE Vehículo;
CREATE TABLE Vehículo
 (
	Placa			varchar (10), 
	Numero			int (2), 
	Modelo			varchar (54), 
	Telefono			varchar (50), 
	serial			int (4), 
	grupo			int (4)

);
-- CREATE ANY INDEXES ...

DROP TABLE Viajes;
CREATE TABLE Viajes
 (
	Cod_Viaje			int (4), 
	Cedula			int (4), 
	Placa			varchar (7), 
	Fecha			date (8), 
	Descr			varchar (60), 
	n_serial			int (2)

);
-- CREATE ANY INDEXES ...

DROP TABLE Zona;
CREATE TABLE Zona
 (
	Cod			int (4), 
	Des			varchar (25), 
	Lat			float (4), 
	lon			float (4), 
	Rad			int (1), 
	Vel			int (1), 
	res			int (1), 
	nueva			int (1), 
	lat_lon			int (4), 
	ll_temp			int (4)

);
-- CREATE ANY INDEXES ...



-- CREATE ANY Relationships ...

-- relationships are not supported for mysql
