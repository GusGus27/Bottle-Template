<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Inicio</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Bienvenido a Mi Página</h1>
        <nav>
            <a href="/">Inicio</a>
            <a href="/nosotros">Acerca de</a>
            <a href="/servicios">Servicios</a>
            <a href="/contacto">Contacto</a>
        </nav>
    </header>
    <div class="container">
        <h2>Contenido Principal {{nombre}}</h2>
        %if edad >= 18:
            <p>¡Eres mayor de edad!</p>
        %else:
            <p>¡Eres menor de edad!</p>    
        %end
        <p>Esta es una página de inicio de ejemplo. Aquí puedes incluir información sobre tu sitio.</p>
        <table>
            <thead>
                <th>ID</th>
                <th>Nombre</th>
                <th>Pokedex</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Imagen</th>
                <th>Generación</th>
            </thead>
            <tbody>
                % for p in pokemones:
                <tr>
                    <td>{{p['id']}}</td>
                    <td>{{p['name']}}</td>
                    <td>{{p['number']}}</td>
                    <td>{{p['weight']}}</td>
                    <td>{{p['height']}}</td>
                    <td><img src="https://static.wikia.nocookie.net/espokemon/images/4/41/Mimikyu.png/revision/latest?cb=20160720213413"/></td>
                    <td>{{p['generation_id']}}</td>
                </tr>
                % end
            </tbody>
        </table>
        
    </div>
    <footer>
        <p>&copy; 2024 Mi Página. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
