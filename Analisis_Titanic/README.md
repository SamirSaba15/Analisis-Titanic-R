# Titanic – Portafolio (R)

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
------------------------------------------------------------------------------------------------------------
## 📁 Estructura del repo
```
.
├── analysis/                 # (opcional) aquí va el .Rmd/.qmd fuente
├── data/                     # datos locales (no versionados por defecto)
├── docs/                     # carpeta pública para GitHub Pages
│   ├── index.html            # redirección a Titanic_Portafolio.html
│   └── Titanic_Portafolio.html
├── install.R                 # instala librerías necesarias
├── LICENSE
├── CITATION.cff
├── .gitignore
└── README.md
```

## 🚀 Cómo reproducir
1. **Clona** el repo y abre R/RStudio.
2. (Opcional pero recomendado) Inicializa un entorno reproducible:
   ```r
   install.packages("renv")
   renv::init()
   ```
3. **Instala** dependencias (una sola vez):
   ```r
   source("install.R")
   ```
4. **(Opcional)** Si tienes el archivo fuente (`analysis/Titanic_Portafolio.Rmd` o `.qmd`), reprodúcelo:
   ```r
   rmarkdown::render("analysis/Titanic_Portafolio.Rmd", output_dir = "docs")
   # o con Quarto: quarto render analysis/Titanic_Portafolio.qmd -o docs/
   ```
5. Abre `docs/Titanic_Portafolio.html` en tu navegador.

## 📊 Resultados (con el split usado en el informe)
- Matriz de confusión y métricas (Accuracy, Balanced Accuracy, Sensitivity/Specificity).
- Curva **ROC** con **AUC ≈ 0.87** (puede variar levemente si cambias la semilla o el split).
- Ingeniería de variables: `Title` desde `Name`, `FamilySize`, imputación de `Age` coherente con el contexto.

> Nota: si cambias la aleatoriedad o la partición entrenamiento/prueba, los números variarán. Para mayor estabilidad, usa validación cruzada.

## 🗂️ Datos
Descarga el dataset de Titanic desde Kaggle y colócalo en `data/` (por ejemplo `data/train.csv`).  
Enlace (copiar y pegar): https://www.kaggle.com/c/titanic

> Por simplicidad no se versiona `data/` en git. Si quieres versionarlo, edita `.gitignore`.

## 🌐 Publicar en GitHub Pages
1. Crea un repo en GitHub (por ejemplo, `titanic-portafolio`).
2. En tu máquina/terminal:
   ```bash
   git init
   git add .
   git commit -m "Publicación inicial: Titanic portafolio"
   git branch -M main
   git remote add origin https://github.com/<TU_USUARIO>/titanic-portafolio.git
   git push -u origin main
   ```
3. En GitHub: **Settings → Pages**  
   - Source: **Deploy from a branch**  
   - Branch: **main** y carpeta **/docs**  
   - Guarda. Tu sitio quedará disponible como: `https://<TU_USUARIO>.github.io/titanic-portafolio/`

> Si prefieres, renombra `docs/Titanic_Portafolio.html` a `docs/index.html` y elimina el archivo de redirección.

## 🧪 Recomendaciones de calidad
- Fija semilla antes de particionar (`set.seed(123)`) y reporta `sessionInfo()` al final.
- Usa validación cruzada (`caret::train` o `tidymodels`) para métricas más estables.
- Deja claro qué clase es la “positiva” (recomiendo **Survived = Sí**). 
- Incluye gráfico ROC + umbral óptimo por `Youden` o costo de negocio.
- Documenta supuestos e imputación de faltantes.

## 📝 Licencia
Este repo usa la licencia **MIT** (ver `LICENSE`).

## 📣 Cómo citar
Ver `CITATION.cff` o cita rápida:
> Saba, S. (2025). Titanic – Portafolio (R).

---

¿Dudas o mejoras? ¡Abre un issue o envía un PR!
