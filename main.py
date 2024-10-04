from bottle import route, run, template, static_file
from configs.database import Database


@route('/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')


@route('/')
def home():
    db = Database()
    rs = db.fetchall(f"SELECT * FROM pokemons;")
    #if rs is not None:
    #for row in rs:
    #print(str(row['id']) + ' ' + row['name'])
    nombre2 = 'pp'
    edad = 16
    return template('index', nombre=nombre2, edad=edad, pokemones=rs)


@route('/contacto')
def contacto():
    return template('contacto')


if __name__ == '__main__':
    run(host='localhost', port=8080, reloader=True)
