from flask import Flask, render_template  # type: ignore

app = Flask(__name__) 

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/invitacion')
def invitacion():
    return render_template('invitacion.html')

if __name__ == '__main__':
    app.run(debug=True)
