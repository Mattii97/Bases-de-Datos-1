

--########################################################################
--ELIMINACION DE VISTAS
--########################################################################


DROP VIEW G06_POSICIONES_NUNCA_ALQUILADAS_FILA_5_EN_ADELANTE CASCADE;

DROP VIEW G06_CLIENTES_ULTIMOS_PAGOS_RELEVANTES CASCADE;


--########################################################################
--ELIMINACION DE TRIGGERS
--########################################################################


DROP TRIGGER TR_G06_CLIENTES_ULTIMOS_PAGOS_RELEVANTES_INSERT ON G06_CLIENTES_ULTIMOS_PAGOS_RELEVANTES;

DROP TRIGGER TR_G06_ACTUALIZAR_SALDO ON G06_MOVIMIENTO_CC;

DROP TRIGGER TR_G06_MOV_ANTERIOR_NO_CONSISTENTE_INSERT ON G06_MOVIMIENTO;

DROP TRIGGER TR_G06_MOV_ANTERIOR_NO_CONSISTENTE_UPDATE ON G06_MOVIMIENTO;


--########################################################################
--ELIMINACION DE FUNCIONES Y PROCEDURES
--########################################################################


DROP FUNCTION TRFN_G06_CLIENTES_ULTIMOS_PAGOS_RELEVANTES_INSERT;

DROP FUNCTION TRFN_G06_ACTUALIZAR_SALDO;

DROP FUNCTION TRFN_G06_MOV_ANTERIOR_NO_CONSISTENTE;

DROP PROCEDURE PR_G06_GENERAR_FACTURAS;

DROP FUNCTION FN_G06_ESTANTERIAS_OCUPADAS_MAS_DE;


--########################################################################
--ELIMINACION DE TABLAS
--########################################################################



DROP TABLE G06_MOV_INTERNO CASCADE;

DROP TABLE G06_ZONA CASCADE;

DROP TABLE G06_ZONA_POSICION CASCADE;

DROP TABLE G06_ESTANTERIA CASCADE;

DROP TABLE G06_MOV_SALIDA CASCADE;

DROP TABLE G06_MOVIMIENTO CASCADE;

DROP TABLE G06_POSICION CASCADE;

DROP TABLE G06_FILA CASCADE;

DROP TABLE G06_MOV_ENTRADA CASCADE;

DROP TABLE G06_LINEA_ALQUILER CASCADE;

DROP TABLE G06_ALQUILER_POSICION CASCADE;

DROP TABLE G06_ALQUILER CASCADE;

DROP TABLE G06_PALLET CASCADE;

DROP TABLE G06_EMPLEADO CASCADE;

DROP TABLE G06_MOVIMIENTO_CC CASCADE;

DROP TABLE G06_CLIENTE CASCADE;