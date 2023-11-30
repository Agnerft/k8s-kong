from flask import Flask, jsonify, request
import yaml

app = Flask(__name__)

# Carregue a especificação OpenAPI do arquivo YAML
with open('teste.yaml', 'r') as file:
    openapi_spec = yaml.safe_load(file)

@app.route('/bets', methods=['POST'])
def create_bet():
    # Implemente a lógica da criação da aposta aqui
    bet_data = request.get_json()
    # ... lógica da aplicação ...
    response_data = {
        'match': '1X-DC',
        'email': 'joe@doe.com',
        'championship': 'Uefa Champions League',
        'awayTeamScore': '2',
        'homeTeamScore': '3'
    }
    return jsonify(response_data), 201

if __name__ == '__main__':
    app.run(debug=True)
