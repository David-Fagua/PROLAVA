# PROLAVA 🛁👔
App de Lavandería. 



_Pendiente_

- Agregar Método para que no se pueda cambiar a otro usuario estando logeado.
- Corregir error al logearse mal.
- Revisar Permisos para usuario.
- Opciones para escoger datos. 




# MODULOS PROLAVA


## Modulo Login

- Entrar al sistema desde el rol:
	- Usuario
	- Admin
- Agregar nuevos Usuarios desde el rol de Admin.
- Editar los usuarios.
- Eliminar usuarios.


## Modulo Facturas 

- Buscar facturas por medio del celular o por el número de factura.
- Agregar facturas nuevas, esto incluye facturas ya existentes.
- Editar ciertos campos de la factura.
- Eliminar facturas.

_BD datapro_

### Tablas
- factura_orden
    - order_id
    - user_id
    - orden_date
    - orden_receiver_name
    - celular
    - order_receiver_address
    - order_total_before_tax
    - orden_total_tax
    - order_tax_per
    - order_total_after_tax
    - order_amount_paid
    - order_total_amount_due
    - note

- factura_orden_producto
    - order_item_id
    - order_id
    - item_code
    - item_name
    - order_iten_quantity
    - order_item_price
    - order_iten_final_amount


## Modulo imprimir facturas

- Genera factura de forma automática.
- Descargar o imprimir dicha factura.

![screenshot of gitfiti](https://raw.github.com/gelstudios/gitfiti/master/gitfiti-screenshot.png "screenshot")

![screenshot of factura](https://github.com/David-Fagua/PROLAVA/blob/main/assets/Img/factura.png "screenshot")

## Modulo clientes

- Agregar los datos del cliente usando como _id_ el _teléfono_.
- Editar el cliente.
- Opción para agregar muchos _celulares_ con el mismo Nombre o cliente.


## Modulo Productos

- Agregar productos.
- Precios de dichos productos.

## Modulo Estadísticas

-Estadísticas del día.

## Mis Redes Sociales

- 🔔 Hello.
- 👉 Visita mi sitio web https://linktr.ee/Fagua_Art 💻


