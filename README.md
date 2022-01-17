# F4-FMPACv2
Placa de circuito impreso diseñada a partir del proyecto F4-FMPAC del grupo RSBC.
Este circuito permite mejorar las capacidades musicales de los ordenadores MSX, es compatible con los estándares FMPAC y msxmusic.
La versión 2 está especificamente diseñada para adaptarse a las dimensiones del OMEGA HOME COMPUTER, y a diferencia de la versión anterior su diseño evita tener que soldar componentes de superficie (SMD) para facilitar la construcción por parte de los más novatos.
El circuito dispone de dos tiras de pines en la parte inferior para ser insertadas en el zocalo del procesador z80, que debe ser extraido de la placa base original e instalado en el zócalo destinado a tal efecto en esta placa.
Además requiere de ser alimentado a +12v y -12v porque de lo contrario el OMEGA no iniciará adecuadamente.
La alimentación puede ser suministrada mediante un módulo eletechsup DD1718PA de +12/-12v, instalando este en el zócalo previsto para tal proposito, o bien proporcionando dichos voltages en los pines 3-5 de dicho zócalo.
También requiere la reprogramación de la ROM del sistema para incorporar una extensión del BIOS que dé soporte a este circuito, de lo contrario los programas que soportan la extensión seguirán omitiendo el módulo y utilizando el sistema FM principal.
A diferencia de la versión anterior este PCB no incorpora zócalo para memoria ROM ni señales a tomar de un slot de cartucho.
Como instrucciones de montaje se pueden seguir las publicadas para la versión anterior en:
https://msxmakers.design.blog/proyectos/f4-fmpac/

