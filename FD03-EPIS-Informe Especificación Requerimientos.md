<center>

[comment]: <img src="./media/media/image1.png" style="width:1.088in;height:1.46256in" alt="escudo.png" />

![./media/media/image1.png](./media/logo-upt.png)

**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERIA**

**Escuela Profesional de Ingeniería de Sistemas**

**Proyecto *"Infraestructura Tecnológica para el Evento Juegos Florales de la Universidad Privada de Tacna"***

Curso: *Tópicos de Base de Datos Avanzados*

Docente: *Mag. Patrick Cuadros Quiroga*

Integrantes:


***Apaza Ccalle, Albert Kenyi (2021071075)***

***Huallpa Maron, Jesús Antonio (2021071085)***

***Helbert Andres Condori Loayza (2020067571)***




**Tacna – Perú**

***2024***

**  
**
</center>

<table style="width: 100%; border: none;">
<tr>
    <td style="text-align: left; vertical-align: top;">
        <img src="./media/logo-upt.png" alt="Logo de Mi Empresa" style="width: 50px;">
    </td>
    <td style="text-align: right; vertical-align: top;">
        <img src="./media/logo-cliente.png" alt="Logo de mi Cliente" style="width: 100px;">
    </td>
</tr>
</table>


<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|MPV|ELV|ARV|10/10/2020|Versión Original|












**Sistema *"Infraestructura Tecnológica para el Evento Juegos Florales de la Universidad Privada de Tacna"***

**Documento de Especificación de Requerimientos de Software**

**Versión *{1.0}***
**

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|MPV|ELV|ARV|10/10/2020|Versión Original|


<div style="page-break-after: always; visibility: hidden">\pagebreak</div>


**INDICE GENERAL**
#
[1.	Generalidades de la Empresa](#_Toc52661346)

1.1	Nombre de la Empresa

1.2	Vision

1.3	Mision

1.4	Organigrama

[2.	Visionamiento de la Empresa](#_Toc52661347)

2.1	Descripción del Problema

2.2	Objetivos de Negocios

2.3	Objetivos de Diseño

2.4	Alcance del proyecto

2.5	Viabilidad del Sistema

2.6	Información obtenida del Levantamiento de Información

[3.	Análisis de Procesos](#_Toc52661348)

3.1	Diagrama del Proceso Actual – Diagrama de actividades

3.2	Diagrama del Proceso Propuesto – Diagrama de actividades Inicial

[4.	Especificación de Requerimientos de Software](#_Toc52661349)

4.1	Cuadro de Requerimientos funcionales Inicial

4.2	Cuadro de Requerimientos No funcionales

4.3	Cuadro de Requerimientos funcionales Final

4.4	Reglas de Negocio

[5.	Fase de Desarrollo](#_Toc52661350)

5.1	Cuadro de Requerimientos funcionales Inicial

5.2	Cuadro de Requerimientos No funcionales

- **a)** Diagrama de Paquetes
- **b)** Diagrama de Casos de Uso
- **c)** Escenarios de Caso de Uso (narrativa)

5.3	Cuadro de Requerimientos funcionales Final

- **a)** Análisis de Objetos
- **b)** Diagrama de Actividades con Objetos
- **c)** Diagrama de Secuencia
- **d)** Diagrama de Clases

[CONCLUSIONES](#_Toc52661355)

[RECOMENDACIONES](#_Toc52661356)

[BIBLIOGRAFIA](#_Toc52661357)

[WEBGRAFIA](#_Toc52661358)


<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

**<u>Informe Especificacion Requerimientos</u>**

    El presente documento describe los requerimientos de infraestructura tecnológica para el proyecto "Infraestructura Tecnológica para el Evento Juegos Florales de la Universidad Privada de Tacna". El objetivo principal de este proyecto es diseñar y desplegar una infraestructura robusta y escalable que permita la correcta ejecución de las actividades del evento Juegos Florales, utilizando tecnologías de vanguardia.

    Este proyecto se enfoca en la creación de una infraestructura tecnológica que optimice la gestión del evento mediante el uso de servicios en la nube, como AWS (Amazon Web Services), y herramientas especializadas para la automatización, monitoreo y gestión de datos. El uso de plataformas como Terraform, MongoDB Atlas y Grafana contribuirá a mejorar la disponibilidad, seguridad y eficiencia de la infraestructura necesaria para soportar los requerimientos del evento, proporcionando un entorno ágil y confiable.

    El documento tiene como propósito definir y detallar los requerimientos técnicos de la infraestructura del sistema, estableciendo claramente los recursos y servicios que serán necesarios para el funcionamiento eficiente y seguro del evento. Además, aborda las características y condiciones de la infraestructura que deben cumplir para satisfacer las necesidades de los usuarios, alineando las expectativas del equipo de desarrollo, los organizadores del evento y los involucrados en la toma de decisiones.


1. <span id="_Toc52661346" class="anchor"></span>**Generalidades de la Empresa**

    1.1	Nombre de la Empresa

        Universidad Privada de Tacna

    1.2	Visión

        La visión de la Universidad Privada de Tacna es ser una universidad líder en el sur del Perú, comprometida con la innovación tecnológica y el desarrollo académico. A través de la incorporación de tecnologías avanzadas, busca mejorar la experiencia de sus estudiantes y fortalecer su posición en el ámbito educativo regional y nacional.

    1.3	Misión

        La misión de la Universidad Privada de Tacna es formar profesionales altamente capacitados en diversas especialidades, promoviendo la investigación, la innovación y la calidad educativa. Se enfoca en ofrecer una formación integral que prepare a sus estudiantes para enfrentar los desafíos del mundo laboral globalizado, a través del uso de tecnologías de vanguardia.

    1.4	Organigrama

    ![Organigrama](./media/organigrama.png)

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

2. <span id="_Toc52661347" class="anchor"></span>**Visionamiento de la Empresa**

    2.1 Descripción del Problema

        La gestión del evento Juegos Florales de la Universidad Privada de Tacna enfrenta diversos problemas logísticos y tecnológicos que impactan directamente en la organización y la experiencia de los participantes:

        Falta de infraestructura tecnológica eficiente: Actualmente, el evento no cuenta con un sistema centralizado para gestionar las actividades, los registros de los participantes ni la administración de los recursos durante el evento. Esto genera dificultades en la coordinación de las diferentes áreas involucradas, lo que puede llevar a retrasos y errores en la ejecución de las actividades.

        Falta de escalabilidad y flexibilidad: La infraestructura actual no está diseñada para soportar un número creciente de usuarios o la cantidad de datos generados durante el evento. En eventos de gran escala, como los Juegos Florales, esto puede generar problemas de rendimiento, saturación de servidores y caídas del sistema, lo que afecta la disponibilidad y la experiencia de los participantes.

        Monitoreo inadecuado del rendimiento: No existe una plataforma de monitoreo que permita supervisar en tiempo real el estado de los servicios tecnológicos, lo que dificulta la identificación rápida de problemas. Esto lleva a que cualquier falla o incidente se detecte tarde, lo que aumenta los tiempos de respuesta y puede afectar la continuidad del evento.

        Dificultades en la administración de los datos: La gestión de la información generada durante el evento, como las inscripciones, los resultados y las interacciones de los participantes, es manual y dispersa. Esto no solo aumenta el riesgo de errores, sino que también dificulta la toma de decisiones en tiempo real debido a la falta de una base de datos centralizada y actualizada.

        Riesgos de seguridad: La infraestructura actual no cuenta con medidas de seguridad avanzadas, lo que pone en riesgo la integridad de los datos personales de los participantes y la estabilidad de los sistemas utilizados durante el evento. La falta de políticas de seguridad adecuadas también podría exponer la infraestructura a amenazas cibernéticas.


    2.2 Objetivos de Negocios

        Optimizar la gestión del evento: Mejorar la eficiencia operativa mediante la automatización de procesos, como el registro de participantes, la asignación de recursos y la gestión de actividades, reduciendo el tiempo y esfuerzo dedicados a tareas manuales y aumentando la productividad.

        Asegurar la escalabilidad del sistema: Implementar una infraestructura tecnológica que pueda adaptarse al crecimiento del número de usuarios, participantes y datos generados durante el evento, garantizando una experiencia fluida sin interrupciones ni caídas del sistema.

        Monitorear el rendimiento en tiempo real: Establecer un sistema de monitoreo en tiempo real para supervisar la disponibilidad y el estado de los servicios y aplicaciones utilizadas en el evento, permitiendo detectar y resolver problemas antes de que afecten la experiencia de los participantes.

        Mejorar la seguridad de la infraestructura: Implementar medidas de seguridad robustas para proteger los datos de los participantes y la integridad de los sistemas, reduciendo riesgos de pérdida de información o ciberataques durante el evento.

        Reducir costos operativos: Minimizar los costos asociados con la gestión manual y las intervenciones reactivas mediante la automatización, optimización de recursos y el uso de soluciones tecnológicas que permitan un mantenimiento preventivo y una mayor eficiencia operativa.

        Fortalecer la experiencia de los participantes: Garantizar una plataforma accesible, ágil y sin interrupciones para los asistentes y organizadores del evento, mejorando la interacción de los usuarios y asegurando una experiencia más satisfactoria y profesional.


    2.3 Objetivos de Diseño

        Automatización de procesos: Diseñar un sistema que permita la automatización de tareas críticas como el registro de participantes, la asignación de recursos, y la actualización de información durante el evento. Esto garantizará una ejecución más eficiente, reduciendo errores humanos y mejorando la rapidez de la toma de decisiones.

        Interfaz intuitiva y fácil de usar: Crear una interfaz de usuario sencilla, interactiva e intuitiva que permita a los organizadores y participantes interactuar con el sistema de manera eficiente, sin necesidad de contar con conocimientos técnicos avanzados, mejorando la experiencia de usuario.

        Monitoreo y visualización en tiempo real: Incorporar herramientas de visualización que permitan a los organizadores y administradores monitorear el estado del evento en tiempo real, desde el registro de participantes hasta el rendimiento de las aplicaciones utilizadas, facilitando la toma de decisiones rápidas ante cualquier inconveniente.

        Escalabilidad y flexibilidad del sistema: Diseñar una infraestructura que sea capaz de adaptarse a cambios inesperados en la cantidad de usuarios o en la cantidad de datos procesados durante el evento, permitiendo que el sistema se expanda o reduzca según sea necesario sin comprometer el rendimiento.

        Seguridad y protección de datos: Implementar medidas de seguridad avanzadas en el diseño del sistema para proteger la información personal de los participantes y asegurar la integridad de los datos gestionados durante el evento, garantizando el cumplimiento de normativas de privacidad y seguridad.

        Accesibilidad y disponibilidad: Asegurar que el sistema sea accesible desde cualquier dispositivo conectado a Internet y que funcione sin interrupciones, permitiendo a los organizadores y participantes acceder a la plataforma en cualquier momento y desde cualquier lugar, garantizando la disponibilidad de los servicios durante todo el evento.



    2.4 Alcance del proyecto

        Inclusiones:

            Automatización de registros y gestión de participantes: El sistema incluirá la automatización del proceso de inscripción de los participantes en el evento, así como la gestión de la información personal, asegurando que los datos sean procesados de manera eficiente y sin errores manuales. También permitirá la actualización en tiempo real de los registros.

            Monitoreo en tiempo real del evento: Se implementará un sistema de monitoreo en tiempo real que rastreará el estado de las aplicaciones utilizadas en el evento, incluyendo plataformas de registro, acceso de los participantes y las herramientas de evaluación. Esto garantizará que cualquier fallo o inconveniente pueda ser detectado y solucionado de manera proactiva antes de que afecte el desarrollo del evento.

            Dashboard interactivo para organizadores: El sistema incluirá un dashboard interactivo y fácil de usar que permitirá a los organizadores visualizar el estado general del evento, incluyendo el número de participantes registrados, el rendimiento de las aplicaciones y los recursos utilizados. Este dashboard permitirá tomar decisiones rápidas basadas en datos en tiempo real.

            Generación de reportes detallados y exportables: Se habilitará una funcionalidad que permita generar reportes detallados sobre el evento, que incluirán métricas clave, como la cantidad de participantes, el uso de recursos, las incidencias registradas y otros aspectos importantes. Estos reportes podrán ser exportados en formatos estándar como PDF o Excel para su análisis y archivo.

            Escalabilidad y flexibilidad en la infraestructura: El sistema se diseñará de manera que pueda escalar según el número de participantes y la carga de trabajo durante el evento, garantizando que se mantenga el rendimiento adecuado incluso en momentos de alta demanda.

        Exclusiones:

            Gestión de eventos fuera del ámbito de los Juegos Florales: El sistema no se extenderá a la gestión de otros eventos organizados por la universidad, ni gestionará eventos fuera del marco del Juegos Florales, como actividades académicas o administrativas.

            Soporte de plataformas de comunicación externas: El sistema no incluirá soporte para plataformas de comunicación externa como correo electrónico, mensajería o redes sociales, ya que estos canales estarán gestionados por otros sistemas y no son parte de la infraestructura del evento.

            Gestión de equipos tecnológicos no asociados al evento: El proyecto se centrará exclusivamente en la infraestructura tecnológica utilizada para la organización del evento Juegos Florales, por lo que no se incluirán la gestión ni el monitoreo de equipos fuera de este contexto (por ejemplo, equipos de la universidad no involucrados directamente en el evento).


    2.5 Viabilidad del Sistema

    ##### 2.5.1. Viabilidad Técnica

        Hardware Disponible

            Equipos de desarrollo: Se dispone de los equipos necesarios para el desarrollo y pruebas del sistema de infraestructura tecnológica. Los requisitos técnicos básicos incluyen:
                Procesador: Intel Core i5 o superior, que garantiza un rendimiento adecuado para ejecutar las herramientas de desarrollo y las aplicaciones necesarias.
                Memoria RAM: Entre 8 GB y 16 GB DDR4, suficiente para realizar múltiples tareas y mantener una respuesta rápida en las aplicaciones.
                Almacenamiento: Disco SSD con capacidad mínima de 256 GB, para asegurar tiempos de carga rápidos y una mayor durabilidad en los equipos utilizados.
                Conectividad: Equipos con acceso a internet de alta velocidad para asegurar la carga y el acceso a los servicios en la nube sin interrupciones.

        Software Disponible

            Plataformas en la nube y herramientas de desarrollo:
                AWS (Amazon Web Services): Utilización de AWS para el alojamiento de la infraestructura del evento, con servicios como EC2 para servidores virtuales, S3 para almacenamiento y RDS para bases de datos, permitiendo una implementación escalable y eficiente.
                Terraform: Herramienta para automatizar la infraestructura como código (IaC), que garantiza una configuración coherente y repetible del entorno, permitiendo la creación, modificación y destrucción de recursos de manera eficiente.
                MongoDB Atlas: Plataforma para bases de datos en la nube que se utilizará para almacenar los datos relacionados con los registros de los participantes y las actividades del evento, garantizando escalabilidad y disponibilidad.
                Grafana: Herramienta de monitoreo y visualización que permitirá el análisis en tiempo real del estado de las aplicaciones y sistemas utilizados durante el evento, con la capacidad de generar dashboards personalizables.

        Infraestructura de Red

            Conectividad confiable: Se requiere una conexión a Internet estable y de alta velocidad para la gestión de la infraestructura en la nube, asegurando que todas las aplicaciones funcionen de manera continua y sin interrupciones durante el evento.
            Red de alta capacidad: Equipos de red como switches y routers de última generación serán utilizados para garantizar un flujo de datos eficiente y sin cuellos de botella, incluso con un gran volumen de usuarios conectados simultáneamente.

        Automatización y Configuración

            Automatización con Terraform: El uso de Terraform permitirá gestionar el entorno de infraestructura como código (IaC), haciendo posible la configuración automatizada de recursos en AWS y evitando errores humanos. Esto también acelera el proceso de despliegue, ya que se puede replicar el mismo entorno en diferentes fases del proyecto (desarrollo, pruebas y producción).
            Automatización de procesos con Python y HCL2: Se utilizarán scripts escritos en Python y HCL2 para automatizar tareas específicas dentro de la infraestructura, como la configuración de recursos en la nube y la recolección de métricas de rendimiento. Esto permitirá la gestión eficiente de la infraestructura sin intervención manual constante, optimizando los tiempos de respuesta y reduciendo el riesgo de errores.

    ##### 5.2. Viabilidad Económica

        El análisis de costos totaliza los recursos necesarios para el desarrollo e implementación del sistema, considerando los siguientes conceptos:

        | **Concepto** | **Costo Total (S/.)** |
        |--------------|-----------------------|
        | **Costos Generales** | 3,222.00 |
        | **Costos Operativos durante el Desarrollo** | 500.00 |
        | **Costos del Ambiente** | 450.00 |
        | **Costos del Personal** | 6,000.00 |
        | **Total** | 10,172.00 |

        Este presupuesto permite cubrir todos los aspectos esenciales del proyecto, asegurando una relación costo-beneficio favorable y sostenibilidad a largo plazo.

    ##### 5.3. Viabilidad Operativa

        Optimización de Recursos: El sistema propuesto permitirá a la universidad maximizar la utilización de la infraestructura tecnológica disponible, proporcionando información detallada sobre el desempeño y el uso de recursos clave, como el servidor, bases de datos, y el tráfico de red. Esta visibilidad permitirá una planificación más precisa del mantenimiento y la redistribución de los recursos, asegurando que se utilicen de manera eficiente durante el evento.

        Mejora en la Toma de Decisiones: Al ofrecer datos en tiempo real sobre el rendimiento de los sistemas, la plataforma facilitará a los administradores del evento tomar decisiones informadas. Esto incluye la gestión del ancho de banda, la asignación de recursos según las necesidades del evento y la prevención de posibles cuellos de botella o fallos. La disponibilidad de información precisa permitirá a los responsables adaptarse rápidamente a cualquier cambio en las condiciones operativas.

        Facilidad de Uso e Integración: El sistema se diseñará con una interfaz fácil de usar que requerirá una mínima curva de aprendizaje para el personal técnico y organizador. Además, la solución será compatible con las plataformas tecnológicas existentes de la universidad, garantizando que la implementación no interrumpa las operaciones cotidianas. Su capacidad de integración asegurará que el sistema funcione sin problemas dentro del entorno tecnológico actual, lo que facilitará su adopción y uso por parte de los administradores y técnicos.

    2.6 Información obtenida del Levantamiento de Información

        Durante el levantamiento de información para el desarrollo del sistema, se identificaron los siguientes aspectos clave:

    **Necesidades de los Técnicos de Soporte:**

        - Requieren una herramienta centralizada para monitorear el estado de la red en tiempo real, con alertas automáticas que les permitan identificar problemas antes de que afecten a los usuarios.

    **Requerimientos de los Administradores:**

        - Necesitan reportes claros y personalizados sobre el rendimiento de la red para tomar decisiones informadas y planificar mantenimientos o actualizaciones futuras.

        Esta información valida la necesidad del sistema como una solución integral para optimizar el rendimiento y la gestión de la red en los laboratorios de la universidad.


<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

3. <span id="_Toc52661348" class="anchor"></span>**Análisis de Procesos**

    3.1 Diagrama del Proceso Actual – Diagrama de actividades

    ![Diagrama](./media/diagrama_actual.png)

    3.2 Diagrama del Proceso Propuesto – Diagrama de actividades Inicial

    ![Diagrama_propuesto](./media/diagrama_propuesto.png)

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

4. <span id="_Toc52661349" class="anchor"></span>**Especificación de Requerimientos de Software**

    4.1 Cuadro de Requerimientos funcionales Inicial
   
    | **ID**  | **Nombre del Requerimiento**                                           | **Descripción**                                                                                                     | **Prioridad** |
    |---------|-----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------|
    | RF-01   | Monitoreo de Infraestructura                                           | Monitorear el estado de la infraestructura tecnológica (servidores, red, almacenamiento, etc.) en tiempo real.    | Alta          |
    | RF-02   | Despliegue Automático con Terraform                                    | Configurar y desplegar automáticamente los recursos tecnológicos mediante herramientas de automatización (Terraform). | Alta          |
    | RF-03   | Garantía de Disponibilidad y Escalabilidad en AWS                      | Garantizar la disponibilidad y escalabilidad de la infraestructura mediante el uso de servicios en la nube (AWS). | Alta          |
    | RF-04   | Pruebas de Carga y Rendimiento                                         | Realizar pruebas de carga y rendimiento de la infraestructura para asegurar la capacidad durante el evento.       | Alta          |
    | RF-05   | Integración con Plataformas Universitarias                             | Configurar el sistema de infraestructura para que pueda integrarse con otras plataformas de la universidad, como la gestión de eventos y bases de datos de usuarios. | Media         |
    | RF-06   | Implementación de EC2 con Amazon Linux 2 para Docker                   | Implementación de un EC2 con Amazon Linux 2 para la Ejecución de Contenedores Docker en AWS mediante Terraform.   | Alta          |
    | RF-07   | Configuración de Instancia de Grafana Cloud                            | Configuración de una Instancia de Grafana Cloud mediante Terraform.                                              | Alta          |
    | RF-08   | Hospedaje de Aplicación Flutter en S3                                 | Configuración de un Bucket S3 para Hospedar una Aplicación Flutter como Sitio Web Estático.                      | Media         |
    | RF-09   | Configuración de MongoDB Atlas                                        | Configuración de un Cluster y Usuario de MongoDB Atlas mediante Terraform.                                       | Alta          |
    | RF-10   | Hospedaje de Aplicación React en S3                                   | Configuración de un Bucket S3 para Hospedar una Aplicación React como Sitio Web Estático.                        | Media         |
    

    4.2 Cuadro de Requerimientos No funcionales

    | **ID**  | **Nombre del Requerimiento**                                           | **Descripción**                                                                                                     | **Prioridad** |
    |---------|-----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------|
    | RNF-01  | Compatibilidad con Sistemas Operativos                                | El sistema de infraestructura debe ser compatible con sistemas operativos Linux y Windows para la gestión de servidores. | Alta          |
    | RNF-02  | Accesibilidad desde Cualquier Dispositivo                             | La plataforma debe ser accesible desde cualquier dispositivo con conexión a Internet (navegador web moderno).    | Alta          |
    | RNF-03  | Seguridad de Datos                                                    | La infraestructura debe garantizar la seguridad de los datos mediante protocolos de encriptación y autenticación. | Alta          |
    | RNF-04  | Escalabilidad                                                        | La infraestructura debe ser escalable y permitir el incremento de recursos en caso de aumento de usuarios o demanda durante el evento. | Alta          |
    | RNF-05  | Redundancia y Alta Disponibilidad                                     | La solución debe ofrecer redundancia y alta disponibilidad para los servicios críticos, con un tiempo de inactividad menor al 1%. | Alta          |
    | RNF-06  | Respaldo y Recuperación ante Fallos                                   | Los servidores y servicios en la nube deben contar con sistemas de respaldo y recuperación ante fallos automáticos. | Alta          |
    | RNF-07  | Optimización de Recursos en el Sistema                                | La infraestructura debe consumir recursos mínimos de CPU y RAM para optimizar el rendimiento de las aplicaciones y servicios del evento. | Media         |

    4.3 Cuadro de Requerimientos funcionales Final

    | **ID**  | **Nombre del Requerimiento**                                           | **Descripción**                                                                                                     | **Prioridad** |
    |---------|-----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------|
    | RF-01   | Monitoreo de Infraestructura                                           | Monitorear el estado de la infraestructura tecnológica (servidores, red, almacenamiento, etc.) en tiempo real.    | Alta          |
    | RF-02   | Despliegue Automático con Terraform                                    | Configurar y desplegar automáticamente los recursos tecnológicos mediante herramientas de automatización (Terraform). | Alta          |
    | RF-03   | Garantía de Disponibilidad y Escalabilidad en AWS                      | Garantizar la disponibilidad y escalabilidad de la infraestructura mediante el uso de servicios en la nube (AWS). | Alta          |
    | RF-04   | Pruebas de Carga y Rendimiento                                         | Realizar pruebas de carga y rendimiento de la infraestructura para asegurar la capacidad durante el evento.       | Alta          |
    | RF-05   | Integración con Plataformas Universitarias                             | Configurar el sistema de infraestructura para que pueda integrarse con otras plataformas de la universidad, como la gestión de eventos y bases de datos de usuarios. | Media         |
    | RF-06   | Implementación de EC2 con Amazon Linux 2 para Docker                   | Implementación de un EC2 con Amazon Linux 2 para la Ejecución de Contenedores Docker en AWS mediante Terraform.   | Alta          |
    | RF-07   | Configuración de Instancia de Grafana Cloud                            | Configuración de una Instancia de Grafana Cloud mediante Terraform.                                              | Alta          |
    | RF-08   | Hospedaje de Aplicación Flutter en S3                                 | Configuración de un Bucket S3 para Hospedar una Aplicación Flutter como Sitio Web Estático.                      | Media         |
    | RF-09   | Configuración de MongoDB Atlas                                        | Configuración de un Cluster y Usuario de MongoDB Atlas mediante Terraform.                                       | Alta          |
    | RF-10   | Hospedaje de Aplicación React en S3                                   | Configuración de un Bucket S3 para Hospedar una Aplicación React como Sitio Web Estático.                        | Media         |
    


    4.4 Reglas de Negocio

    |  ID   | Descripción                                                                                                     | Prioridad |
    | :---: | :-------------------------------------------------------------------------------------------------------------- | :-------: |
    | RN-01 | Solo el personal autorizado podrá acceder a la infraestructura tecnológica mediante credenciales seguras.         |   Alta    |
    | RN-02 | Los datos transmitidos y almacenados deben ser cifrados para garantizar su confidencialidad y protección.         |   Alta    |
    | RN-03 | Los recursos tecnológicos deben ser escalables y configurables para adaptarse a diferentes fases del evento (planificación, ejecución, análisis post-evento). |   Alta    |
    | RN-04 | La infraestructura debe integrarse con otras plataformas tecnológicas de la universidad, garantizando una transferencia segura de datos. |   Media   |
    | RN-05 | La infraestructura debe permitir una recuperación rápida ante fallos, con un tiempo máximo de inactividad de 15 minutos. |   Alta    |
    | RN-06 | Los informes de la infraestructura, como el estado de los servidores y la red, deben ser generados automáticamente para evaluación periódica. |   Alta    |
    | RN-07 | La infraestructura debe contar con un sistema de alertas basado en métricas de rendimiento y disponibilidad.      |   Alta    |
    | RN-08 | La infraestructura debe ser compatible con servicios de nube como AWS para escalar automáticamente según la demanda. |   Alta    |
    | RN-09 | El sistema debe incluir la capacidad de realizar pruebas de carga en la infraestructura antes del evento para garantizar su estabilidad. |   Media   |

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

5. <span id="_Toc52661350" class="anchor"></span>**Fase de Desarrollo**

    5.1 Perfiles de Usuario

    **Administrador**

    **Descripción:**
    El Administrador es el responsable de la supervisión y gestión general del evento. Es quien coordina y organiza todos los aspectos logísticos, asegurando que el evento se lleve a cabo sin contratiempos.

    **Responsabilidades:**
    - Coordinar y gestionar todos los aspectos logísticos del evento.
    - Supervisar el correcto desarrollo de las actividades programadas.
    - Resolver problemas operativos y logísticos durante el evento.

    **Interacciones con el Sistema:**
    - Accede a la plataforma de gestión para supervisar el avance del evento.
    - Visualiza las métricas e informes relacionados con la logística y el desarrollo del evento.

    ---

    **Estudiante**

    **Descripción:**
    El Estudiante es el participante final del evento. Se registra, asiste y utiliza los recursos tecnológicos proporcionados durante el evento.

    **Responsabilidades:**
    - Registrarse para participar en el evento.
    - Utilizar los recursos tecnológicos proporcionados para las actividades del evento.
    - Participar activamente en las sesiones y actividades programadas.

    **Interacciones con el Sistema:**
    - Registra su participación en el evento a través de la plataforma.
    - Utiliza la plataforma para acceder a materiales, conferencias y actividades programadas.

    ---

    **Bienestar Universitario**

    **Descripción:**
    El área de Bienestar Universitario es la encargada de organizar y coordinar los eventos culturales y académicos de la universidad. Se asegura de que el evento se desarrolle de acuerdo con la planificación y que los estudiantes participen activamente.

    **Responsabilidades:**
    - Organizar y coordinar todas las actividades del evento.
    - Promover la participación estudiantil.
    - Asegurar la logística del evento y el bienestar de los participantes.

    **Interacciones con el Sistema:**
    - Utiliza la plataforma para gestionar la inscripción y participación de los estudiantes.
    - Supervisa la logística y las actividades del evento a través de la plataforma.

    
5.2 Modelo Conceptual

- **a)** Diagrama de Paquetes

![paquete](./media/diagrama_paquete.png)

![paquete](./media/diagrama_paquete1.png)
   
- **b)** Diagrama de Casos de Uso

![caso](./media/diagrama_caso_uso.png)


- **c)** Escenarios de Caso de Uso (narrativa)


---

### Caso de Uso 1: **Monitoreo de Infraestructura**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Accede al panel de monitoreo de la infraestructura.                    | El sistema muestra el estado general de la infraestructura (servidores, red, etc.). |
| 2        | Bienestar Universitario| Solicita información sobre el estado de los recursos para coordinar eventos. | El sistema proporciona información detallada sobre los recursos disponibles.     |
| 3        | Administrador          | Selecciona un servidor o recurso para monitorear.                      | El sistema muestra detalles específicos de ese recurso, como uso de CPU, RAM, etc. |
| 4        | Administrador          | Revisa los gráficos de uso en tiempo real.                             | El sistema actualiza los gráficos mostrando el rendimiento y posibles alertas.    |
| 5        | Administrador          | Toma decisiones sobre si escalar o realizar mantenimiento.            | El sistema ofrece recomendaciones para mejorar el rendimiento o escalar los recursos. |

---

### Caso de Uso 2: **Despliegue Automático con Terraform**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Inicia el despliegue con Terraform.                                    | El sistema ejecuta el script de Terraform y comienza a provisionar los recursos.   |
| 2        | Administrador          | Confirma si desea proceder con la configuración.                       | El sistema procede con la ejecución del plan de Terraform y muestra el progreso.   |
| 3        | Estudiante             | Verifica que la infraestructura esté lista para realizar las actividades del evento. | El sistema muestra el estado final de la infraestructura para su uso.             |
| 4        | Administrador          | Valida la creación de los recursos.                                    | El sistema confirma que todos los recursos fueron creados correctamente.          |

---

### Caso de Uso 3: **Garantía de Disponibilidad y Escalabilidad en AWS**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Revisa el estado de los recursos en AWS.                               | El sistema muestra el estado actual de todos los recursos y su capacidad de escalabilidad. |
| 2        | Bienestar Universitario| Solicita que se aumenten los recursos para eventos adicionales.        | El sistema aplica los cambios para aumentar la capacidad de la infraestructura.    |
| 3        | Administrador          | Configura el escalado automático para los recursos.                    | El sistema confirma la configuración del escalado automático en AWS.              |
| 4        | Administrador          | Monitorea el comportamiento de los recursos después del escalado.     | El sistema ajusta la infraestructura automáticamente y muestra el progreso.       |

---

### Caso de Uso 4: **Pruebas de Carga y Rendimiento**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Configura los parámetros para la prueba de carga.                      | El sistema recibe los parámetros y comienza la ejecución de las pruebas de carga. |
| 2        | Estudiante             | Participa en las pruebas de carga accediendo a los recursos.           | El sistema simula una alta demanda de tráfico y ajusta la infraestructura.        |
| 3        | Administrador          | Observa los resultados de la prueba.                                   | El sistema genera un informe con las métricas de rendimiento y posibles cuellos de botella. |
| 4        | Administrador          | Ajusta la infraestructura según los resultados de la prueba.           | El sistema realiza ajustes automáticamente según las recomendaciones.            |

---

### Caso de Uso 5: **Integración con Plataformas Universitarias**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Bienestar Universitario| Accede a la plataforma para gestionar la inscripción de estudiantes.   | El sistema muestra la lista de estudiantes registrados y actividades disponibles. |
| 2        | Estudiante             | Registra su participación en el evento.                                | El sistema confirma la inscripción del estudiante.                                |
| 3        | Administrador          | Verifica que la sincronización de datos con la plataforma universitaria se haya realizado. | El sistema confirma la integración exitosa de la información.                     |
| 4        | Bienestar Universitario| Supervisa las actividades del evento y el progreso de la participación. | El sistema muestra el estado en tiempo real de las actividades y la participación. |

---

### Caso de Uso 6: **Implementación de EC2 con Amazon Linux 2 para Docker**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Crea una instancia EC2 con Amazon Linux 2.                             | El sistema provisiona la instancia en AWS.                                        |
| 2        | Estudiante             | Accede a la aplicación desplegada en el contenedor Docker.             | El sistema confirma que la aplicación está disponible y operativa.               |
| 3        | Administrador          | Instala Docker en la instancia EC2.                                    | El sistema instala Docker correctamente en la instancia.                          |
| 4        | Administrador          | Configura y valida el contenedor Docker con las aplicaciones.          | El sistema valida que el contenedor esté configurado correctamente.              |

---

### Caso de Uso 7: **Configuración de Instancia de Grafana Cloud**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Crea una cuenta en Grafana Cloud y configura la instancia.             | El sistema crea la instancia y genera los datos de acceso.                        |
| 2        | Administrador          | Configura los servicios y paneles para monitorear.                     | El sistema configura las fuentes de datos y los paneles en Grafana.              |
| 3        | Estudiante             | Accede a los paneles de monitoreo para ver los resultados del evento.  | El sistema muestra los paneles con las métricas relevantes del evento.           |
| 4        | Administrador          | Valida que los datos sean correctos en los paneles.                    | El sistema confirma que los datos mostrados son correctos y actualizados.        |

---

### Caso de Uso 8: **Hospedaje de Aplicación Flutter en S3**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Carga los archivos de la aplicación Flutter a S3.                      | El sistema sube los archivos al bucket de S3.                                     |
| 2        | Estudiante             | Accede a la aplicación Flutter a través de la URL pública.             | El sistema muestra la aplicación Flutter de manera funcional.                    |
| 3        | Administrador          | Configura el bucket S3 para servir como sitio web.                     | El sistema configura el bucket para el hospedaje web y muestra la URL.           |
| 4        | Administrador          | Verifica que la aplicación esté funcionando correctamente.             | El sistema confirma que la aplicación está accesible sin errores.                |

---

### Caso de Uso 9: **Configuración de MongoDB Atlas**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Crea un cluster en MongoDB Atlas.                                      | El sistema provisiona el cluster en MongoDB Atlas.                                |
| 2        | Estudiante             | Accede a los datos almacenados en el cluster para las actividades.     | El sistema confirma la conexión y acceso a los datos del cluster.                |
| 3        | Administrador          | Configura los permisos para los usuarios del cluster.                 | El sistema valida y aplica los permisos correctamente.                            |
| 4        | Administrador          | Verifica la conectividad y el estado del cluster.                      | El sistema proporciona información sobre el estado del cluster y métricas.       |

---

### Caso de Uso 10: **Hospedaje de Aplicación React en S3**

| **Paso** | **Actor**             | **Acción del Actor**                                                   | **Respuesta del Sistema**                                                          |
|----------|-----------------------|------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| 1        | Administrador          | Carga los archivos de la aplicación React a S3.                        | El sistema sube los archivos del proyecto React al bucket de S3.                 |
| 2        | Estudiante             | Accede a la aplicación React desde la URL proporcionada.               | El sistema muestra la aplicación React de forma funcional en el navegador.       |
| 3        | Administrador          | Configura el bucket de S3 para servir la aplicación como sitio web.    | El sistema configura el bucket como un sitio web estático.                       |
| 4        | Administrador          | Verifica que la aplicación esté funcionando correctamente.             | El sistema confirma que la aplicación React se muestra sin errores.              |

--- 



5.3 Modelo Lógico
    
- **a)** Análisis de Objetos
    
    
**Entidades**
    
    
![entidad](./media/entidades.png)
    
    
**Frontera**
    
    
![frontera](./media/frontera.png)
    
    
 **Control**
    
    
![control](./media/control.png)
    
    
    
- **c)** Diagrama de Secuencia
    
    **Diagrama de secuencia: Monitoreo de Infraestructura (CU01)**
    
    ![sec_CU01](./media/secu_cu1.png)

    **Diagrama de secuencia: Despliegue Automático con Terraform (CU02)**
    
    ![sec_CU02](./media/secu_cu2.png)

    **Diagrama de secuencia: Garantía de Disponibilidad y Escalabilidad en AWS (CU03)**
    
    ![sec_CU03](./media/secu_cu3.png)

    **Diagrama de secuencia: Pruebas de Carga y Rendimiento (CU04)**
    
    ![sec_CU04](./media/secu_cu4.png)
  
    **Diagrama de secuencia: Integración con Plataformas Universitarias (CU05)**
    
    ![sec_CU05](./media/secu_cu5.png)

    **Diagrama de secuencia: Implementación de EC2 con Amazon Linux 2 para Docker (CU06)**
    
    ![sec_CU06](./media/secu_cu6.png)

    **Diagrama de secuencia: Configuración de Instancia de Grafana Cloud (CU07)**
    
    ![sec_CU07](./media/secu_cu7.png)

    **Diagrama de secuencia: Hospedaje de Aplicación Flutter en S3 (CU08)**
    
    ![sec_CU08](./media/secu_cu8.png)

    **Diagrama de secuencia: Configuración de MongoDB Atlas (CU09)**
    
    ![sec_CU09](./media/secu_cu9.png)

    **Diagrama de secuencia: Hospedaje de Aplicación React en S3 (CU10)**
    
    ![sec_CU10](./media/secu_cu10.png)
  

    - **d)** Diagrama de Clases
    
    ![diagram_clase](./media/diagrama_clase.png)




<span id="_Toc52661355" class="anchor"></span>**CONCLUSIONES**


    El análisis realizado demuestra que el proyecto de infraestructura tecnológica para el evento Juegos Florales de la Universidad Privada de Tacna es completamente viable desde las perspectivas técnica, económica, operativa, legal y social. La infraestructura existente en la universidad es suficiente para soportar la implementación del sistema, y los beneficios esperados, tanto operativos como económicos, superan ampliamente los costos asociados. La infraestructura tecnológica propuesta garantizará un soporte adecuado para las actividades del evento, asegurando una experiencia fluida tanto para los participantes como para los organizadores.

    Además, la implementación de la infraestructura tecnológica mejorará la calidad del evento, proporcionando recursos confiables para la realización de las actividades académicas, culturales y artísticas. Esto no solo permitirá una experiencia más enriquecedora para los estudiantes, sino también para el público y los asistentes. El sistema propuesto optimizará la logística, el acceso a la información y la gestión de recursos, facilitando la organización y el desarrollo eficiente del evento.

    El cumplimiento con las normativas legales, como la Ley N° 29733 de Protección de Datos Personales, garantiza que la información recolectada durante el evento se maneje de manera segura y respetuosa con la privacidad de los participantes. Este cumplimiento refuerza el aspecto ético y la confiabilidad del proyecto. Asimismo, el enfoque tecnológico contribuirá a los objetivos de sostenibilidad de la universidad al promover el uso responsable de los recursos tecnológicos y optimizar el consumo energético durante el evento.

    En resumen, este proyecto no solo resuelve las necesidades tecnológicas actuales del evento Juegos Florales, sino que también sienta las bases para la mejora continua en la organización de futuros eventos en la universidad. Su diseño escalable y flexible asegura que pueda adaptarse a las crecientes demandas tecnológicas de la universidad, posicionándola como un referente en la gestión eficiente de eventos académicos y culturales.


<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<span id="_Toc52661356" class="anchor"></span>**RECOMENDACIONES**

    Monitoreo Continuo de la Infraestructura Tecnológica: Es fundamental realizar un monitoreo constante de la infraestructura tecnológica durante el evento para detectar posibles fallos o problemas de conexión. Se recomienda que el equipo de soporte técnico esté disponible en tiempo real para atender cualquier inconveniente y asegurar que los recursos tecnológicos funcionen de manera óptima durante toda la duración del evento.

    Capacitación del Personal Técnico: Para garantizar un funcionamiento eficiente de la infraestructura tecnológica durante los Juegos Florales, es recomendable proporcionar capacitación especializada al personal técnico que se encargará de la gestión y mantenimiento de los equipos. Esto permitirá una respuesta rápida ante cualquier contingencia y optimizará el uso de los recursos disponibles.

    Pruebas Previas al Evento: Se sugiere realizar pruebas exhaustivas de la infraestructura tecnológica al menos una semana antes del evento. Esto incluye pruebas de redes, equipos de sonido, sistemas de proyección, y otros recursos tecnológicos. Estas pruebas permitirán identificar y corregir posibles fallos antes de que el evento comience, asegurando su éxito.

    Optimización de la Gestión de Recursos: Para maximizar la eficiencia, es recomendable implementar una herramienta de gestión de recursos en tiempo real que permita a los organizadores controlar la asignación de equipos, espacios y servicios de manera efectiva. Esto ayudará a evitar conflictos logísticos y asegurará que los recursos sean utilizados de manera adecuada durante el evento.

    Planificación de la Sostenibilidad: Se debe considerar el impacto ambiental del evento y optimizar el consumo de energía de los equipos tecnológicos. Se recomienda la utilización de equipos de bajo consumo energético y la implementación de políticas para minimizar el desperdicio de recursos durante el evento, alineándose con los objetivos de sostenibilidad de la universidad.

    Mejorar la Infraestructura a Largo Plazo: Dado que el evento Juegos Florales se llevará a cabo de manera anual, se recomienda considerar una actualización periódica de la infraestructura tecnológica para mantenerla al día con los avances en tecnología. Además, es importante invertir en soluciones escalables que puedan adaptarse a las necesidades crecientes de la universidad y el evento en el futuro.

    Retroalimentación Post-Evento: Para garantizar mejoras en la infraestructura tecnológica para eventos futuros, se recomienda realizar encuestas de satisfacción entre los participantes, organizadores y personal técnico. Recoger retroalimentación sobre la experiencia tecnológica permitirá identificar áreas de mejora y aplicar ajustes antes del próximo evento.

    ---

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<span id="_Toc52661357" class="anchor"></span>**BIBLIOGRAFIA**

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<span id="_Toc52661358" class="anchor"></span>**WEBGRAFIA**

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>
