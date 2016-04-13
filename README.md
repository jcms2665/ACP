# ACP

Análisis de Componentes Principales / Principal Component Analysis


## Objetivo

El objetivo es replicar un análisis de componentes principales agilizando el proceso de selección de variables. 

#### Instalación

Para poder ejecutar este programa se requiere seguir los siguientes pasos:

+ Paso 1. Instalar la versión más reciente del paquete _devtools_

    ```
              install.packages("devtools")
    ```

+ Paso 2. Cargar el paquete _devtools_

    ```
              library(devtools)
    ```

+ Paso 3. Instalar el paquete **ACP**

    ```
              install_github("jcms2665/ACP")
    ```

**Nota**: Los usuarios de Windows necesitan instalar [Rtools](https://cran.r-project.org/bin/windows/Rtools/) para poder instalar  paquetes de Github.





## Uso

Con esta información, se puede correr el programa de la siguiente manera:

```
              acp(x,y,u)
```





