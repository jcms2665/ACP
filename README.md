# ACP

Análisis de Componentes Principales / Principal Component Analysis


## Objetivo

Replicar un Análisis de Componentes Principales (ACP) agilizando el proceso de selección de variables. 
> El siguiente paso será buscar la interacción con muestras complejas



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







## Ejemplo

Supongamos que se tiene una base llamada _base1_ y se quiere hacer un Análisis de Componentes Principales (ACP) con las variables  _ind1_, ..., _ind5_


+ Paso 4. Una vez instalado el paquete (paso 3) **ACP**, se debe de cargar la librería:

    ```
              library(ACP)
    ```

+ Paso 5. Definir las variables que se van a considerar para el análisis. Esto se puede hacer con un vector de la siguiente manera:

    ```
              v<-c("ind1","ind2","ind3","ind4","ind5")
    ```

+ Paso 6. Ejecutar la función  **acp**, la cual requiere de dos argumentos: _nombre de la base_ (base1) y _variables_ (v)

    ```
              acp(base1,v)
    ```

+ **Resultado**. El resultado es dos base: _CFactorial_ y _Ponderadores_. La primera tiene la carga factorial para cada registro y la segunda la estructura factorial del modelo (eigenvalores)

