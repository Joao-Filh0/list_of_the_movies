from flask import Flask, jsonify, request
import os

# instalar o python
# instalar o pycharm ou vscode
# brir a pasta API com pycharm ou vscode
# rodar esse comando no terminal do pycharm ou vscode ( pip install flask)
# pyhton main.py


app = Flask(__name__)


@app.route("/movies/", methods=["GET"])
def get_all_movies():
    list_data = [{
        "imageUrl": "https://upload.wikimedia.org/wikipedia/pt/thumb/6/63/Black_Adam_poster.jpg/250px-Black_Adam_poster.jpg",
        "title": "Adão Negro",
        "description": "Após quase cinco mil anos de prisão, Adão Negro (Dwayne Johnson), um anti-herói da antiga cidade de Kahndaq, é libertado nos tempos modernos. Suas táticas brutais e seu modo de justiça atraem a atenção da Sociedade da Justiça da América (JSA), que tenta impedir sua fúria, ensiná-lo a ser mais um herói do que um vilão e deve se unir para impedir uma força mais poderosa que próprio Adão."

    },

        {
            "imageUrl": "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/5E40929A54BE6A23B637DEDCE833E25BB19896644EA4C5DCE945312741E1DB44/scale?width=1440&aspectRatio=1.78&format=jpeg",
            "title": "Avatar",
            "description": "“Avatar: O Caminho da Água” ocupa, atualmente, a sétima posição entre as maiores bilheterias da história, com US$1,7 bilhão. Apesar do início lento, especialmente nos Estados Unidos, onde os cinemas sofreram a diminuição do público devido a nevascas, a sequência de “Avatar” levou apenas duas semanas para conquistar seu primeiro bilhão de dólares. O longa é o sexto a realizar esse feito nesse período, de acordo com a Forbes."

        }

    ]

    return jsonify(list_data)


if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8000))
    app.run(debug=True, port=port)
