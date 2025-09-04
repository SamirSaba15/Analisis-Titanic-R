# Análisis Predictivo de Supervivencia en el Titanic 🚢

**Análisis completo de los factores de supervivencia del desastre del Titanic, culminando en un modelo de regresión logística con un 81.9% de exactitud balanceada.**

---

### [Ver el Reporte Completo en HTML](https://NOMBRE_DE_USUARIO.github.io/NOMBRE_DEL_REPOSITORIO/Titanic_Portafolio.html) ---

### Objetivo del Proyecto

Este proyecto sigue el proceso de 6 pasos del análisis de datos (Preguntar, Preparar, Procesar, Analizar, Compartir y Actuar) para responder a una pregunta clave: **"¿Qué factores hicieron que algunas personas tuvieran más probabilidades de sobrevivir al hundimiento del Titanic?"**

El objetivo no es solo analizar los datos, sino presentar el flujo de trabajo completo de una manera que sirva como tutorial y ejemplo de buenas prácticas para aspirantes a analistas de datos.

### Pasos del Análisis

1.  **Preparación y Limpieza:** Imputación de valores faltantes (`Age`, `Embarked`) y eliminación de variables irrelevantes.
2.  **Ingeniería de Características:** Creación de nuevas variables como `FamilySize`, `IsAlone` y, crucialmente, extracción del `Title` del pasajero (Mr, Mrs, etc.) para capturar el estatus social.
3.  **Análisis Exploratorio de Datos (EDA):** Visualización de las relaciones entre variables como género, clase y edad con la supervivencia.
4.  **Modelado Predictivo:** Entrenamiento y comparación de tres modelos (Regresión Logística, Árbol de Decisión, Random Forest).
5.  **Evaluación y Optimización:** Selección del mejor modelo (Regresión Logística) y optimización de su rendimiento mediante el ajuste del umbral de decisión con una curva ROC-AUC, logrando una **Especificidad del 83.5%** en la detección de supervivientes.
6.  **Aplicación:** Desarrollo del código para un cuestionario interactivo que estima la probabilidad de supervivencia.

### Hallazgos Clave

* **El estatus social y el género fueron los predictores más fuertes.** Tener un título como "Mrs" o "Miss" y viajar en 1ra Clase aumentaba drásticamente las probabilidades de supervivencia.
* Ser hombre adulto (`Title = "Mr"`) reducía las probabilidades de sobrevivir en más de un 90% en comparación con ser mujer.
* Incluso un modelo simple como la **Regresión Logística** puede superar a modelos más complejos si se le alimenta con características bien diseñadas (`Title`).

### Herramientas Utilizadas

* **Lenguaje:** R
* **Paquetes Clave:** `tidyverse` (para `dplyr` y `ggplot2`), `caret`, `randomForest`, `pROC`, `rpart`.
* **Entorno:** RStudio

### ¿Cómo Replicar este Proyecto?

1.  Clona o descarga este repositorio.
2.  Abre el archivo `Titanic_Portafolio.Rmd` en RStudio.
3.  Asegúrate de tener instalados todos los paquetes mencionados en el script.
4.  ¡Haz clic en "Knit" para generar el reporte o ejecuta los chunks de código para explorar el análisis!
