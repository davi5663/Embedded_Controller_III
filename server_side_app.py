from flask import Flask, jsonify, request, render_template
from mariadb import connect

app = Flask(__name__)


@app.route("/api", methods = ['GET', 'POST'])
def get():
    db = connect(user = "xxxx", password="xxxx", host="xxxx", database="xxxx")
    if request.method == 'GET':
        cur = db.cursor()
        cur.execute('''select * from data''')
        r = [dict((cur.description[i][0], value)
                for i, value in enumerate(row)) for row in cur.fetchall()]
        cur.close()
        return jsonify({'My Sensor Data' : r})

    elif request.method == 'POST':
        json = request.json
        tempature = json["D_Temp"]
        humidity = json["D_Humy"] 
        cur = db.cursor()
        sql = "insert into xxxx ( D_Temp, D_Humy) values ( ?, ?)"
        try:
            cur.execute(sql, (tempature, humidity))
            db.commit()
        except:
            return "Error"
        else:
            return "Success"


    db.close()

@app.route("/")
def home():
    db = connect(user = "xxxx, password ="xxxx", host="xxxx", database="xxxx")
    cur = db.cursor()
    cur.execute ('''SELECT D_Humy from data ORDER BY D_ID Desc LIMIT 1''')
    humidity_result = cur.fetchone()
    cur.execute ('''SELECT D_Temp from data ORDER BY D_ID Desc LIMIT 1''')
    tempature_result = cur.fetchone()
    cur.execute ('''SELECT D_Time ,D_Temp, D_Humy from data ORDER BY D_ID Desc LIMIT 5''')
    all_tempature = cur.fetchone()
    db.close()
    return render_template("main_page.html", david=humidity_result, david2 = tempature_result, david3 = all_tempature) #With render template I can write python code inside a HTML file. I just have to create a value and a key.
