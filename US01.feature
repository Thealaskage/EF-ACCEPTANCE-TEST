Feature: US01 - Trámite de Reserva
Scenario: S01 - El pasajero realiza correctamente su trámite de reserva de viaje


Given que el pasajero se encuentra el margen de horarios de buses
When el pasajero seleccione la opción “Reserva de viajes”
And el pasajero coloca su [Fecha y Hora de Salida]
And el pasajero coloca su [Placa del Bus] disponible
And el pasajero coloca su [Nombre Completo]
And el pasajero coloca su [Fecha de nacimiento]
And el pasajero coloca su [Número de documento]
And el pasajero coloca su [Ciudad de origen]
And el pasajero coloca su [Ciudad de destino]
When el pasajero seleccione la opción “Pagar” and “Confirmar reserva”
Then el sistema registrará los datos del pasajero correctamente,
completando el proceso de trámite de reserva de viaje y asignándole un asiento en el bus asignado

 
Example: Registro de trámite de reserva correcto
|Fecha Y Hora de salida            |7/11/22  11:59 am        |
|Placa del Bus                     |A1233MASNA                | DISPONIBLE /
|Nombre Completo                   |Jorge Sebastian Ponce Loyola   |
|Fecha de nacimiento               |09/01/04   | 
|DNI                               |72324312    | 
|Ciudad de origen                  |Arequipa   |
|Ciudad de destino                 |Lima      |

Scenario: S02 - El pasajero realiza incorrectamente su trámite de reserva de viaje

Given que el pasajero se encuentra el margen de horarios de buses
When el pasajero seleccione la opción “Reserva de viajes”
And el pasajero coloca su [Fecha y Hora de Salida]
And el pasajero coloca su [Placa del Bus] no disponible
And el pasajero coloca su [Nombre Completo]
And el pasajero coloca su [Fecha de nacimiento]
And el pasajero coloca su [Número de documento]
And el pasajero coloca su [Ciudad de origen]
And el pasajero coloca su [Ciudad de destino]
When el pasajero seleccione la opción “Pagar” and “Confirmar reserva”
Then el sistema le mostrará al pasajero que el bus elegido ya inició su viaje,
por lo que se le pedirá que seleccione otro.

 
Example: Registro de trámite de reserva incorrecto
|Fecha Y Hora de salida             |7/10/22  12:19 pm        |
|Placa del Bus                      |K901ERET               | NO   DISPONIBLE /
|Nombre Completo                    |Martin Eladio Messi Carrión  |
|Fecha de nacimiento                |10/01/03  | 
|DNI                                |73452812   | 
|Ciudad de origen                   |Pisco        |
|Ciudad de destino                  |Lima      |