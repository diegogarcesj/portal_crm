# Instrucciones para ejecutar la aplicación web
A continuación se detallan las instrucciones para ejecutar esta aplicación web.

## Sobre la Base de Datos.
Dadas las características reducidas de esta aplicación web y con el objetivo de facilitar la revisión, se optó por usar **sqlite3** como base de datos. Puesto que Rails hace una abstracción de la base de datos a través de **ActiveRecord**, usar una base de datos más apropiada para ambientes de producción como **PostgreSQL** solo habría complicado innecesariamente la revisión.

## Dependencias
Para obtener las dependencias del proyecto, tanto gemas de Ruby como paquetes NPM, es necesario ejecutar en consola, estando en el directorio de la aplicación:

```
	  bundle install && yarn install
```

## Ejecución
Para ejecutar la aplicación basta con ejecutar:

```
    rails s
```

Luego, debe abrir su navegador en la dirección: http://localhost:3000
