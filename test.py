import pymysql
import self as self
import tk as tk

connection = pymysql.connect(host='127.0.0.1',
                             user='root',
                             password='101449Kdg!',
                             db='marathon',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

cursor = connection.cursor()

sql = "SELECT * FROM participant WHERE (part_first_name = %s AND part_last_name = %s) OR part_last_name = %s"

cursor.execute(sql, ("ava", "wester", "wester"))

participant = cursor.fetchall()

master = tk.Tk()
self.widgets = {}
row = 0
for part_id, part_first_name, part_last_name, country, gender in participant:
    row += 1
    self.widgets[part_id] = {
        "part_id": tk.Label(master, text=part_id),
        "first name": tk.Label(master, text=part_first_name),
        "last name": tk.Label(master, text=part_last_name),
        "country": tk.Label(master, text=country),
        "gender": tk.Label(master, text=gender)
    }

    self.widgets[part_id]["part_id"].grid(row=row, column=0, sticky="nsew")
    self.widgets[part_id]["first name"].grid(row=row, column=1, sticky="nsew")
    self.widgets[part_id]["last name "].grid(row=row, column=2, sticky="nsew")
    self.widgets[part_id]["country"].grid(row=row, column=3, sticky="nsew")
    self.widgets[part_id]["gender"].grid(row=row, column=4, sticky="nsew")

tk.mainloop()