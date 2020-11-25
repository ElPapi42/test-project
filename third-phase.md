## Propuesta
Evaluar el siguiente caso de uso y proporcionar estrategias para resolver los problemas presentados.
Enunciado:
Perfil de la empresa:
La empresa Movimiento Vehicular SAS, es una empresa dedicada al monitoreo y rastreo vehicular, dicha empresa se encarga de prestar servicios SaaS de una aplicación que le permite a los clientes gerenciar sus flotas vehiculares.
El software le permite a un administrador registrar cuentas de usuario y enviar las credenciales a los usuarios registrados por medio de correo electrónico. Una vez los usuarios han recibido sus credenciales éstos acceden al sistema y registran cada uno de los vehiculos que poseen dispositivos GPS, uno a la vez.

Descripción del software:
Aplicación hecha en PHP que posee los modulos de:
1) Registro de vehiculos
2) Registro de usuarios
3) Creacion de zonas para los vehiculos
4) Rastreo de vehiculos
5) Sistema de notificaciones de alarmas de los vehiculos.
Aplicación hecha en JAVA que posee las siguientes características:
1) Receptor de tramas de comunicación de todos los GPS
2) Abre un puerto a la vez para recibir diferentes tramas de diferentes GPS

Descripción del problema de aplicación:
Los clientes se han estado quejando de algunas fallas en el sistema, las cuales se resaltan:
1) El sistema no envia las notificaciones de alarmas de los vehiculos a tiempo
2) Hay lentitud de carga del sistema 
3) Los vehiculos dejan de reportar muchas veces sus posiciones por fallas en el servidor de tramas de GPS
4) La interfaz web no es responsiva
5) El registro de vehiculos es lento y no soporta el registro de vehiculos por lotes.
6) Algunos mensajes de error se muestran en blanco en el sistema.

Problemas organizacionales:
1) El sistema ha sido desarrollado por multiples personas y carece de lineamientos de desarrrollo y documentacion
2) El sistema fue hecho usando el framework Yii 1.0
3) El departamento de desarrollo solo posee 2 desarrolladores que han hecho lo que se ha solicitado desde la gerencia
4) La aplicación esta hospedada en un servidor con LEMP Stack
5) El código que se hace se envia directamente al servidor.

Requerimientos:
Se requieren establecer estrategias y mecanismos que ayuden a la empresa a corregir sus problemas de software inmediatos y sus problemas organizacionales a mediano y largo plazo, se requiere la elaboración de un plan que pueda ayudar a la empresa a tener un mayor control sobre su organizacion y sobre la aplicacion, asi como establecer maneras de hacer que los servicios perduren en el tiempo, mejoren y beneficie a la empresa y a los usuarios haciendo que pueda ser mantenida y por consiguiente que se pueda evolucionar la aplicacion de la empresa.

## Solucion
A corto plazo, debido a que solo son dos desarrolladores manteniendo las aplicaciones, se deberia hacer un esfuerzo para mejorar la fiabilidad del software legacy, evitando anadir nuevas caracteristicas, y centrandose exclusivamente en arreglar los problemas mas urgentes, dejando de lado lo menos crucial para la operacion del negocio.

Con este objetivo en mente, se debrian tomar acciones para crear una propia separacion de los ambientes de desarrollo y produccion, que le de una mayor flexibilidad a los desarroladores para actuar. Una forma relativamente rapida de mejorar por fuerza bruta la fiabilidad y tiempo de respuesta, es escalar horizontalmente las dos aplicaciones, de esta forma cuando un nodo falle, habra otro disponible para procesar solicitudes hasta que el anterior nodo sea reiniciado o arreglado, esto tambien aumentaria el troughtput del sistema.

Se debera Dockerizar las Aplicaciones, para que puedan ser usadas con mas flexibilidad en entornos mas ricos y dinamicos. Adoptar un servicio de Cloud Hosting no tan costoso, como Digital Ocean, puede ser clave para alcanzar rapidamente estas metas a corto plazo. Migrar la base de datos del Lemp Stack a alguna de las ofrecidas por los Cloud Providers sera un plus para soportar el escalamiento horizontal

A medio plazo, con el marco de trabajo renovado con los dos ambientes, y un breve respiro gracias al escalamiento horizontal, se podria hacer focus en los puntos 4, 5 y 6, tratar de resolver un poco las necesidades de los clientes, ya que es gracias a ellos que el negocio esta corriendo, la empresa no puede darse el lujo de perderlos. Paralelo a esto, la gerencia deberia tomar la iniciativa de empezar a buscar nuevos integrantes para el equipo de desarrollo, seran necesarios a medio y largo plazo.

Con un equipo de desarrollo en plena expansion, se podria empezar a analizar un plan a futuro que garantice la vida de la plataforma, sin embargo, los puntos especificos de la planificacion dependeran de de varios factores, como el estado financiero de la organizacion, sus objetivos comerciales, sus planes de expansion y la rentabilidad de la plataforma actual. El plan de accion ideal, sobretodo en el estado actual de la plataforma (legacy, tecnologia obsoleta, dificil de mantener y extender), seria planificar el desarrollo de una nueva plataforma.

A primera vista, la descripcion de la plataforma la hace ver de un tamano relativamente pequeno - mediano, se podria analizar la viabilidad de una mejora/remplazo progresivo de la plataforma legacy, por la plataforma nueva, dividiendo el equipo de desarrollo en dos partes, uno dedicado a mantener la aplicacion legacy, y otro dedicado al desarrollo de la nueva plataforma. Un remplazo progresivo ayudaria a que los clientes puedan disfrutar de las ventajas de la nueva plataforma sin esta estar terminada al 100%, sin embargo, se debe analizar con mucho mas detenimiento las fases de desarrollo y depliegues de la nueva plataforma, asi como tambien su integracion con las apps legacy, para evitar acarrear o heredar problemas.

El desarrollo de la nueva plataforma debera seguir todos los estandares modernos para el Desarrollo de Software, como Unit Testing, Pipelines de integracion, disenos escalables tanto a nivel tecnico, como a nivel de negocio, que permitan la futura expansion de la plataforma, pivoteo del modelo de negocio, o apertura de nuevas verticales.

Inicialmente, se podria renovar el servicio que recibe la informacion de los GPS, ya que se encuentra profundo en el stack, y por lo que se puede intuir, no expone informacion directamente a los clientes, si no que es consumida y preprocesada por la aplicacion de PHP. Esto haria que ejecutar su renovacion, y su integracion en la plataforma sea mas facil. Luego, seria ideal remplazar la aplicacion monolitica de php, por una aplicacion web y una API independientes, debera haber miembros del equipo especializados en cada area (se debe tomar esto en cuenta a la hora de hacer las contrataciones).

Este plan puede tener muchos obstaculos, dependera de la situacion actual de la empresa en todos los niveles, si este es el mejor plan de accion, sin embargo, debido a su tiempo de planificacion a largo plazo y en paralelo con la plataforma legacy, lo hace lo suficientemente flexible para adaptarse a muchos casos. Apostar por menos en el largo plazo podria verse motivado por unas bajas espectativas financieras de la plataforma, que es claramente, otro problema totalmente diferente.
