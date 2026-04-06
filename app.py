from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Merhabaaaaaaa Şeyhmusssssss! AWS CodeBuild-CodePipeline ve CloudFormation Template ile ilgili testleri gerçekleştiriyoruz!! 🚀"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)   
