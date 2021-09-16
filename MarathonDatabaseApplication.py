import pymysql.cursors

import tkinter as tk

master = tk.Tk()
tk.Label(master,
         text="Username").grid(row=1)
tk.Label(master,
         text="Password").grid(row=2)
e1 = tk.Entry(master)
e2 = tk.Entry(master)
e1.grid(row=1, column=1)
e2.grid(row=2, column=1)
tk.Button(master,
          text='Enter',
          command=master.quit).grid(row=4,
                                    column=0,
                                    sticky=tk.W,
                                    pady=4)
tk.mainloop()

x = 0
while x == 0:
    try:
        username = e1.get()
        password = e2.get()
        connection = pymysql.connect(host='127.0.0.1',
                                     user=username,
                                     password=password,
                                     db='marathon',
                                     charset='utf8mb4',
                                     cursorclass=pymysql.cursors.DictCursor)
        print("connection established.")
        master.destroy()
        x = 1
    except:
        master.destroy()
        master = tk.Tk()
        tk.Label(master,
                 text="Username").grid(row=1)
        tk.Label(master,
                 text="Password").grid(row=2)
        tk.Label(master,
                 text="Invalid Credentials. Please Try Again:").grid(row=0)
        e1 = tk.Entry(master)
        e2 = tk.Entry(master)
        e1.grid(row=1, column=1)
        e2.grid(row=2, column=1)
        tk.Button(master,
                  text='Enter',
                  command=master.quit).grid(row=4,
                                            column=0,
                                            sticky=tk.W,
                                            pady=4)
        tk.mainloop()
        x = 0


def invoke_search():
    first_name_search = first_name.get()
    last_name_search = last_name.get()
    cursor = connection.cursor()

    name_validation = 'CALL name_verify(%s,%s)'
    cursor.execute(name_validation, (first_name_search, last_name_search))
    result = cursor.fetchone()
    result2 = int(result['name_here'])

    if result2 == 0:
        tk.Label(path6, text="Participant not found. Please Re-enter Name").grid(row=0)

    else:
        path6.destroy()
        path7 = tk.Tk()
        sql = "CALL track_athlete(%s,%s)"

        cursor.execute(sql, (first_name_search, last_name_search))

        participant = cursor.fetchall()

        place = 1
        for participant in participant:
            place += 1
            tk.Label(path7, text="ID").grid(row=0, column=0)
            tk.Label(path7, text="First Name").grid(row=0, column=1)
            tk.Label(path7, text="Last Name").grid(row=0, column=2)
            tk.Label(path7, text="Country").grid(row=0, column=3)
            tk.Label(path7, text="Gender").grid(row=0, column=4)
            tk.Label(path7, text="Race Year").grid(row=0, column=5)
            tk.Label(path7, text="Age on Race Day").grid(row=0, column=6)
            tk.Label(path7, text="Finishing Time").grid(row=0, column=7)
            tk.Label(path7, text="Overall Rank").grid(row=0, column=8)
            tk.Label(path7, text="Gender Rank").grid(row=0, column=9)
            tk.Label(path7, text="Division Rank").grid(row=0, column=10)
            tk.Label(path7, text="Volunteer Register").grid(row=0, column=11)
            tk.Label(path7, text="Shoe Preference").grid(row=0, column=12)
            tk.Label(path7, text="Wheelchair Type").grid(row=0, column=13)
            tk.Label(path7, text="Prize Amount").grid(row=0, column=14)
            tk.Label(path7, text=participant["part_id"]).grid(row=place, column=0)
            tk.Label(path7, text=participant["part_first_name"]).grid(row=place, column=1)
            tk.Label(path7, text=participant["part_last_name"]).grid(row=place, column=2)
            tk.Label(path7, text=participant["country"]).grid(row=place, column=3)
            tk.Label(path7, text=participant["gender"]).grid(row=place, column=4)
            tk.Label(path7, text=participant["race"]).grid(row=place, column=5)
            tk.Label(path7, text=participant["age_on_race"]).grid(row=place, column=6)
            tk.Label(path7, text=participant["finishing_time"]).grid(row=place, column=7)
            tk.Label(path7, text=participant["overall_rank"]).grid(row=place, column=8)
            tk.Label(path7, text=participant["gender_rank"]).grid(row=place, column=9)
            tk.Label(path7, text=participant["division_rank"]).grid(row=place, column=10)
            tk.Label(path7, text=participant["v_id"]).grid(row=place, column=11)
            tk.Label(path7, text=participant["shoe_preference"]).grid(row=place, column=12)
            tk.Label(path7, text=participant["chair_type"]).grid(row=place, column=13)
            tk.Label(path7, text=participant["prize_amount"]).grid(row=place, column=14)

        tk.Button(path7, text="Restart", command=start).grid(row=1,
                                                             column=0,
                                                             sticky=tk.W,
                                                             pady=1)


def search_name():
    path4.destroy()
    global path6
    path6 = tk.Tk()
    tk.Label(path6,
             text="Please Enter Athlete Details").grid(row=2)
    tk.Label(path6,
             text="Athlete First Name").grid(row=3)
    tk.Label(path6,
             text="Athlete Last Name").grid(row=4)
    global first_name
    global last_name
    first_name = tk.Entry(path6)
    last_name = tk.Entry(path6)
    first_name.grid(row=3, column=1)
    last_name.grid(row=4, column=1)
    tk.Button(path6,
              text='Search',
              command=invoke_search).grid(row=5,
                                          column=1,
                                          sticky=tk.W,
                                          pady=3)
    tk.Button(path6, text="Restart", command=start).grid(row=6,
                                                         column=1,
                                                         sticky=tk.W,
                                                         pady=1)


def place_search():
    time_seconds = hour_variable.get() + ":" + minutes_variable.get() + ":" + seconds_variable.get()
    sql = "CALL time_check(%s, %s, %s)"
    cursor = connection.cursor()
    cursor.execute(sql, (time_seconds, run_wheel_variable.get(), year_variable.get()))
    place = cursor.fetchall()
    tk.Label(path8, text="Your Overall Place Would Be: ").grid(row=8, column=0)
    for row in place:
        tk.Label(path8, text=row["est_rank"]).grid(row=9, column=1)


def enter_place():
    path4.destroy()
    global path8
    path8 = tk.Tk()
    tk.Label(path8, text="Enter Estimated Finishing Time").grid(row=0)
    tk.Label(path8, text="Hours").grid(row=1)
    tk.Label(path8, text="Minutes").grid(row=2)
    tk.Label(path8, text="Seconds").grid(row=3)
    tk.Label(path8, text="Wheelchair or Runner").grid(row=4)
    tk.Label(path8, text="Choose Year").grid(row=5)
    global run_wheel_variable
    global hour_variable
    global minutes_variable
    global seconds_variable
    global year_variable
    run_wheel_variable = tk.StringVar(path8)
    run_options = [
        "Runner",
        "Wheelchair"
    ]
    run_wheel_variable.set(run_options[0])
    tk.OptionMenu(path8, run_wheel_variable, *run_options).grid(row=4, column=1)

    year_variable = tk.IntVar(path8)
    year_options = [
        2017,
        2018,
        2019
    ]
    year_variable.set(year_options[0])
    tk.OptionMenu(path8, year_variable, *year_options).grid(row=5, column=1)

    hour_variable = tk.StringVar(path8)
    hour_options = [
        "00",
        "01",
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10"
    ]
    hour_variable.set(hour_options[0])
    tk.OptionMenu(path8, hour_variable, *hour_options).grid(row=1, column=1)

    minutes_variable = tk.StringVar(path8)
    minute_options = [
        "00",
        "01",
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "22",
        "23",
        "24",
        "25",
        "26",
        "27",
        "28",
        "29",
        "30",
        "31",
        "32",
        "33",
        "34",
        "35",
        "36",
        "37",
        "38",
        "39",
        "40",
        "41",
        "42",
        "43",
        "44",
        "45",
        "46",
        "47",
        "48",
        "49",
        "50",
        "51",
        "52",
        "53",
        "54",
        "55",
        "56",
        "57",
        "58",
        "59",
    ]
    minutes_variable.set(minute_options[0])
    tk.OptionMenu(path8, minutes_variable, *minute_options).grid(row=2, column=1)

    seconds_variable = tk.StringVar(path8)
    seconds_variable.set(minute_options[0])
    tk.OptionMenu(path8, seconds_variable, *minute_options).grid(row=3, column=1)

    tk.Button(path8,
              text='Estimate My Place',
              command=place_search).grid(row=6,
                                         column=1,
                                         sticky=tk.W,
                                         pady=5)
    tk.Button(path8, text="Restart", command=start).grid(row=7,
                                                         column=1,
                                                         sticky=tk.W,
                                                         pady=7)


def show_avg():
    sql = "CALL avg_finish(%s, %s, %s, %s)"
    cursor = connection.cursor()
    cursor.execute(sql, (gender_variable.get(), age_variable.get(), year_variable.get(), run_wheel_variable.get()))
    place = cursor.fetchall()
    tk.Label(path12, text="The average time for this race and division is: ").grid(row=5, column=0)
    for row in place:
        tk.Label(path12, text=row["avg_time"]).grid(row=5, column=1)


def avg_finish():
    path11.destroy()
    global path12
    path12 = tk.Tk()
    tk.Label(path12, text="Select Gender").grid(row=0, column=0)
    tk.Label(path12, text="Select Age Division").grid(row=1, column=0)
    tk.Label(path12, text="Select Race Year").grid(row=2, column=0)
    tk.Label(path12, text="Select Runner or Wheelchair").grid(row=3, column=0)
    global run_wheel_variable
    run_wheel_variable = tk.StringVar(path12)
    run_options = [
        "Runner",
        "Wheelchair"
    ]
    run_wheel_variable.set(run_options[0])
    tk.OptionMenu(path12, run_wheel_variable, *run_options).grid(row=3, column=1)

    global gender_variable
    gender_variable = tk.StringVar(path12)
    gender_options = [
        "F",
        "M"
    ]
    gender_variable.set(gender_options[0])
    tk.OptionMenu(path12, gender_variable, *gender_options).grid(row=0, column=1)

    global age_variable
    age_variable = tk.StringVar(path12)
    age_options = [
        "15-19",
        "20-29",
        "30-39",
        "40-49",
        "50-59",
        "60-69",
        "70-79",
        "80-89",
        "90-100"

    ]
    age_variable.set(age_options[0])
    tk.OptionMenu(path12, age_variable, *age_options).grid(row=1, column=1)

    global year_variable
    year_variable = tk.IntVar(path12)
    year_options = [
        2017,
        2018,
        2019
    ]
    year_variable.set(year_options[0])
    tk.OptionMenu(path12, year_variable, *year_options).grid(row=2, column=1)

    tk.Button(path12, text="Show Average", command=show_avg).grid(row=4,
                                                                  column=1,
                                                                  sticky=tk.W,
                                                                  pady=4)
    tk.Button(path12, text="Restart", command=start).grid(row=4,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=5)


def fast_finish():
    path11.destroy()
    global path13
    path13 = tk.Tk()
    tk.Label(path13, text="The Fastest Race Year Was: ").grid(row=0, column=0)
    tk.Label(path13, text="The Average Finishing Time That Year Was: ").grid(row=1, column=0)
    sql = 'CALL fast_finish()'
    cursor = connection.cursor()
    cursor.execute(sql)
    place = cursor.fetchall()
    for row in place:
        tk.Label(path13, text=row["top_speed"]).grid(row=1, column=1)
        tk.Label(path13, text=row["race"]).grid(row=0, column=1)

    tk.Button(path13, text="Restart", command=start).grid(row=2,
                                                          column=1,
                                                          sticky=tk.W,
                                                          pady=2)


def show_countries_go():
    sql = 'CALL count_countries(%s)'
    cursor = connection.cursor()
    cursor.execute(sql, year.get())
    countries = cursor.fetchall()
    tk.Label(path14, text="Country").grid(row=1, column=0)
    tk.Label(path14, text="Total").grid(row=1, column=1)
    place = 1;
    for row in countries:
        place += 1
        tk.Label(path14, text="                                             ").grid(row=place, column=0)
        tk.Label(path14, text="                                             ").grid(row=place, column=1)
        tk.Label(path14, text=row["country"]).grid(row=place, column=0)
        tk.Label(path14, text=row["total"]).grid(row=place, column=1)


def show_countries():
    path11.destroy()
    global path14
    path14 = tk.Tk()
    tk.Label(path14, text="Select Race Year:").grid(row=0, column=0)
    global year
    year = tk.IntVar(path14)
    year_options1 = [
        2017,
        2018,
        2019
    ]
    year.set(year_options1[0])
    tk.OptionMenu(path14, year, *year_options1).grid(row=0, column=1)
    tk.Button(path14, text="Show Country Analysis", command=show_countries_go).grid(row=0,
                                                                                    column=2,
                                                                                    sticky=tk.W,
                                                                                    pady=0)

    tk.Button(path14, text="Restart", command=start).grid(row=0,
                                                          column=3,
                                                          sticky=tk.W,
                                                          pady=0)


def view_stats():
    path4.destroy()
    global path11
    path11 = tk.Tk()
    tk.Button(path11, text="Average Finishing Times by Division", command=avg_finish).grid(row=0,
                                                                                           column=0,
                                                                                           sticky=tk.W,
                                                                                           pady=4)
    tk.Button(path11, text="Fastest Race", command=fast_finish).grid(row=0,
                                                                     column=1,
                                                                     sticky=tk.W,
                                                                     pady=4)
    tk.Button(path11, text="Country Break Down", command=show_countries).grid(row=0,
                                                                              column=2,
                                                                              sticky=tk.W,
                                                                              pady=4)
    tk.Button(path11, text="Restart", command=start).grid(row=1,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def view_part_data():
    path2.destroy()
    global path4
    path4 = tk.Tk()
    tk.Button(path4, text="Search by Name", command=search_name).grid(row=0,
                                                                      column=0,
                                                                      sticky=tk.W,
                                                                      pady=4)
    tk.Button(path4, text="View Statistics", command=view_stats).grid(row=0,
                                                                      column=1,
                                                                      sticky=tk.W,
                                                                      pady=4)
    tk.Button(path4, text="Where would I place?", command=enter_place).grid(row=0,
                                                                            column=2,
                                                                            sticky=tk.W,
                                                                            pady=4)
    tk.Button(path4, text="Restart", command=start).grid(row=1,
                                                         column=2,
                                                         sticky=tk.W,
                                                         pady=1)


def return_spons():
    sql = 'CALL spon_by_year(%s)'
    cursor = connection.cursor()
    cursor.execute(sql, year_variable.get())

    sponsor = cursor.fetchall()

    place = 2
    for sponsor in sponsor:
        place += 1
        tk.Label(path9, text="Sponsor Name").grid(row=2, column=0)
        tk.Label(path9, text="Sponsor ID").grid(row=2, column=1)
        tk.Label(path9, text="                                                    ").grid(row=place, column=0)
        tk.Label(path9, text="                                                    ").grid(row=place, column=1)
        tk.Label(path9, text=sponsor["s_name"]).grid(row=place, column=0)
        tk.Label(path9, text=sponsor["s_id"]).grid(row=place, column=1)


def view_all_spon():
    path5.destroy()
    global path9
    path9 = tk.Tk()
    tk.Label(path9, text="Select Sponsorship Year").grid(row=0, column=0)
    global year_variable
    year_variable = tk.IntVar(path9)
    year_options = [
        2017,
        2018,
        2019
    ]
    year_variable.set(year_options[0])
    tk.OptionMenu(path9, year_variable, *year_options).grid(row=0, column=1)
    tk.Button(path9, text="View Sponsors", command=return_spons).grid(row=1,
                                                                      column=1,
                                                                      sticky=tk.W,
                                                                      pady=4)
    tk.Button(path9, text="Restart", command=start).grid(row=2,
                                                         column=2,
                                                         sticky=tk.W,
                                                         pady=1)


def add_amt():
    sql = 'CALL spon_amt(%s, %s)'
    cursor = connection.cursor()
    cursor.execute(sql, (year_variable.get(), spon_variable.get()))

    sponsor = cursor.fetchall()

    place = 3
    for sponsor in sponsor:
        place += 1
        tk.Label(path10, text="                            ").grid(row=place, column=1)
        tk.Label(path10, text=sponsor["amount"]).grid(row=place, column=1)

    tk.Button(path10, text="Restart", command=start).grid(row=3,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def return_spons_cat():
    sql = 'CALL spon_by_cat(%s, %s)'
    cursor = connection.cursor()
    cursor.execute(sql, (year_variable.get(), spon_variable.get()))

    sponsor = cursor.fetchall()

    place = 3
    for sponsor in sponsor:
        place += 1
        tk.Label(path10, text="Sponsor Name").grid(row=3, column=0)
        tk.Label(path10, text="                                      ").grid(row=place, column=0)
        tk.Label(path10, text=sponsor["s_name"]).grid(row=place, column=0)

    tk.Button(path10, text="Show Amount Donated", command=add_amt).grid(row=3, column=1)
    tk.Button(path10, text="Restart", command=start).grid(row=3,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def view_spon_cat():
    path5.destroy()
    global path10
    path10 = tk.Tk()
    tk.Label(path10, text="Select Sponsorship Year").grid(row=0, column=0)
    global year_variable
    year_variable = tk.IntVar(path10)
    year_options = [
        2017,
        2018,
        2019
    ]
    year_variable.set(year_options[0])
    tk.OptionMenu(path10, year_variable, *year_options).grid(row=0, column=1)
    tk.Label(path10, text="Select Sponsorship Level").grid(row=1, column=0)
    global spon_variable
    spon_variable = tk.StringVar(path10)
    spon_options = [
        "Top",
        "Premier",
        "Gold",
        "Silver",
        "Bronze"
    ]
    spon_variable.set(spon_options[0])
    tk.OptionMenu(path10, spon_variable, *spon_options).grid(row=1, column=1)
    tk.Button(path10, text="View Sponsors", command=return_spons_cat).grid(row=2,
                                                                           column=1,
                                                                           sticky=tk.W,
                                                                           pady=4)
    tk.Button(path10, text="Restart", command=start).grid(row=3,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def view_spon_data():
    path2.destroy()
    global path5
    path5 = tk.Tk()
    tk.Button(path5, text="View All Sponsors", command=view_all_spon).grid(row=0,
                                                                           column=0,
                                                                           sticky=tk.W,
                                                                           pady=4)
    tk.Button(path5, text="View Sponsors by Category", command=view_spon_cat).grid(row=0,
                                                                                   column=1,
                                                                                   sticky=tk.W,
                                                                                   pady=4)
    tk.Button(path5, text="Restart", command=start).grid(row=1,
                                                         column=1,
                                                         sticky=tk.W,
                                                         pady=1)


def view_vol_data():
    global path22
    path22 = tk.Tk()

    sql = 'CALL view_vol_data()'
    cursor = connection.cursor()
    cursor.execute(sql)

    vol = cursor.fetchall()

    scrollbar = tk.Scrollbar(path22)
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    allvols = tk.Listbox(path22, yscrollcommand=scrollbar.set)
    allvols.insert(tk.END, "Volunteer Name, ID")

    for vol in vol:
        allvols.insert(tk.END, vol["v_first_name"] + " " + vol["v_last_name"] + ": ", vol["v_id"])

    allvols.pack(side=tk.LEFT, fill=tk.BOTH)
    scrollbar.config(command=allvols.yview)


def view_data():
    path1.destroy()
    global path2
    path2 = tk.Tk()
    tk.Button(path2, text="Participant Data", command=view_part_data).grid(row=0,
                                                                           column=0,
                                                                           sticky=tk.W,
                                                                           pady=4)
    tk.Button(path2, text="Sponsor Data", command=view_spon_data).grid(row=0,
                                                                       column=1,
                                                                       sticky=tk.W,
                                                                       pady=4)
    tk.Button(path2, text="Volunteer Data", command=view_vol_data).grid(row=0,
                                                                        column=2,
                                                                        sticky=tk.W,
                                                                        pady=4)

    tk.Button(path2, text="Restart", command=start).grid(row=1,
                                                         column=1,
                                                         sticky=tk.W,
                                                         pady=1)


def add_run():
    try:
        sql = 'CALL add_participant(%s,%s,%s,%s, %s)'
        cursor = connection.cursor()
        cursor.execute(sql, (first.get(), last.get(), country.get(), gender_variable.get(), shoe.get()))
        connection.commit()
        tk.Label(path18, text="Participant Added.                                              "
                              "               ").grid(row=6, column=0)

    except:
        tk.Label(path18, text="Participant add failed. Please ensure your inputs are valid and "
                              "try again.").grid(row=6, column=0)


def new_run():
    path19.destroy()
    global path18
    path18 = tk.Tk()
    tk.Label(path18, text="First Name: ").grid(row=0, column=0)
    tk.Label(path18, text="Last Name: ").grid(row=1, column=0)
    tk.Label(path18, text="Country: ").grid(row=2, column=0)
    tk.Label(path18, text="Gender: ").grid(row=3, column=0)
    tk.Label(path18, text="Shoe Preference: ").grid(row=4, column=0)
    global first
    global last
    global country
    first = tk.Entry(path18)
    last = tk.Entry(path18)
    country = tk.Entry(path18)
    first.grid(row=0, column=1)
    last.grid(row=1, column=1)
    country.grid(row=2, column=1)
    global gender_variable
    gender_variable = tk.StringVar(path18)
    gender_options = [
        "F",
        "M"
    ]
    gender_variable.set(gender_options[0])
    tk.OptionMenu(path18, gender_variable, *gender_options).grid(row=3, column=1)
    global shoe
    shoe = tk.StringVar(path18)
    shoe_options = [
        "Adidas",
        "Asics",
        "New Balance",
        "Nike",
        "Hoka",
        "Saucony"
    ]
    shoe.set(shoe_options[0])
    tk.OptionMenu(path18, shoe, *shoe_options).grid(row=4, column=1)
    tk.Button(path18, text="Add", command=add_run).grid(row=5, column=1,
                                                        sticky=tk.W,
                                                        pady=4)
    tk.Button(path18, text="Restart", command=start).grid(row=6,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def add_wheel():
    try:
        sql = 'CALL add_wheel(%s,%s,%s,%s,%s)'
        cursor = connection.cursor()
        cursor.execute(sql, (first.get(), last.get(), country.get(), gender_variable.get(), chair.get()))
        connection.commit()
        tk.Label(path18, text="Participant Added.                                               "
                              "                     ").grid(row=6, column=0)

    except:
        tk.Label(path18, text="Participant add failed. Please ensure your inputs are valid and "
                              "try again.").grid(row=6, column=0)


def new_wheel():
    path19.destroy()
    global path18
    path18 = tk.Tk()
    tk.Label(path18, text="First Name: ").grid(row=0, column=0)
    tk.Label(path18, text="Last Name: ").grid(row=1, column=0)
    tk.Label(path18, text="Country: ").grid(row=2, column=0)
    tk.Label(path18, text="Gender: ").grid(row=3, column=0)
    tk.Label(path18, text="Chair Preference: ").grid(row=4, column=0)
    global first
    global last
    global country
    first = tk.Entry(path18)
    last = tk.Entry(path18)
    country = tk.Entry(path18)
    first.grid(row=0, column=1)
    last.grid(row=1, column=1)
    country.grid(row=2, column=1)
    global gender_variable
    gender_variable = tk.StringVar(path18)
    gender_options = [
        "F",
        "M"
    ]
    gender_variable.set(gender_options[0])
    tk.OptionMenu(path18, gender_variable, *gender_options).grid(row=3, column=1)
    global chair
    chair = tk.StringVar(path18)
    chair_options = [
        "push-rim",
        "other"
    ]
    chair.set(chair_options[0])
    tk.OptionMenu(path18, chair, *chair_options).grid(row=4, column=1)
    tk.Button(path18, text="Add", command=add_wheel).grid(row=5, column=1,
                                                          sticky=tk.W,
                                                          pady=4)
    tk.Button(path18, text="Restart", command=start).grid(row=6,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def part_type():
    path15.destroy()
    global path19
    path19 = tk.Tk()
    tk.Label(path19, text="Choose Athlete Type").grid(row=0, column=0)
    tk.Button(path19, text="Runner", command=new_run).grid(row=1,
                                                           column=0,
                                                           sticky=tk.W,
                                                           pady=4)
    tk.Button(path19, text="Wheelchair", command=new_wheel).grid(row=1,
                                                                 column=1,
                                                                 sticky=tk.W,
                                                                 pady=4)
    tk.Button(path19, text="Restart", command=start).grid(row=2,
                                                          column=1,
                                                          sticky=tk.W,
                                                          pady=1)


def delete_part_go():
    try:
        sql = 'CALL delete_participant(%s)'
        cursor = connection.cursor()
        cursor.execute(sql, id_delete.get())
        connection.commit()
        tk.Label(path23, text="Participant Deleted.                      ").grid(row=3, column=0)

    except:
        tk.Label(path23, text="Participant delete failed.").grid(row=3, column=0)
        tk.Label(path23, text="Note that participants may not be deleted if they are "
                              "currently registered.").grid(row=4, column=0)


def delete_parts():
    path15.destroy()
    global path23
    path23 = tk.Tk()
    tk.Label(path23, text="Enter ID of Participant to Delete: ").grid(row=0, column=0)
    global id_delete
    id_delete = tk.Entry(path23)
    id_delete.grid(row=0, column=1)
    tk.Button(path23, text="Delete Participant", command=delete_part_go).grid(row=1,
                                                                              column=1,
                                                                              sticky=tk.W,
                                                                              pady=1)
    tk.Button(path23, text="Restart", command=start).grid(row=1,
                                                          column=3,
                                                          sticky=tk.W,
                                                          pady=1)


def delete_reg_go():
    try:
        sql = 'CALL delete_registered(%s, %s)'
        cursor = connection.cursor()
        cursor.execute(sql, (rid_delete.get(), year_variable.get()))
        connection.commit()
        tk.Label(path26, text="Registration Deleted.                      ").grid(row=4, column=0)

    except:
        tk.Label(path26, text="Registration delete failed.").grid(row=4, column=0)


def delete_reg():
    path15.destroy()
    global path26
    path26 = tk.Tk()
    tk.Label(path26, text="Enter ID of Registered Participant to Delete: ").grid(row=0, column=0)
    tk.Label(path26, text="Select Registration Year: ").grid(row=1, column=0)
    global rid_delete
    rid_delete = tk.Entry(path26)
    rid_delete.grid(row=0, column=1)
    global year_variable
    year_variable = tk.IntVar(path26)
    year_options = [
        2017,
        2018,
        2019
    ]
    year_variable.set(year_options[0])
    tk.OptionMenu(path26, year_variable, *year_options).grid(row=1, column=1)
    tk.Button(path26, text="Delete Registered Participant", command=delete_reg_go).grid(row=2,
                                                                                        column=1,
                                                                                        sticky=tk.W,
                                                                                        pady=1)
    tk.Button(path26, text="Restart", command=start).grid(row=2,
                                                          column=3,
                                                          sticky=tk.W,
                                                          pady=1)


def update_shoes_go():
    try:
        sql = 'CALL update_shoe_pref(%s, %s)'
        cursor = connection.cursor()
        cursor.execute(sql, (shoe_pid.get(), shoe.get()))
        connection.commit()
        tk.Label(path28, text="Shoe Updated.                      ").grid(row=3, column=0)

    except:
        tk.Label(path28, text="Shoe update failed.").grid(row=3, column=0)


def update_shoes():
    path27.destroy()
    global path28
    path28 = tk.Tk()
    tk.Label(path28, text="Enter Participant ID: ").grid(row=0, column=0)
    tk.Label(path28, text="Select New Shoe Preference: ").grid(row=1, column=0)
    global shoe_pid
    shoe_pid = tk.Entry(path28)
    shoe_pid.grid(row=0, column=1)
    global shoe
    shoe = tk.StringVar(path28)
    shoe_options = [
        "Adidas",
        "Asics",
        "New Balance",
        "Nike",
        "Hoka",
        "Saucony"
    ]
    shoe.set(shoe_options[0])
    tk.OptionMenu(path28, shoe, *shoe_options).grid(row=1, column=1)
    tk.Button(path28, text="Restart", command=start).grid(row=2,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)
    tk.Button(path28, text="Update Shoe Preference", command=update_shoes_go).grid(row=2,
                                                                                   column=1,
                                                                                   sticky=tk.W,
                                                                                   pady=1)


def update_chair_go():
    try:
        sql = 'CALL update_chair_pref(%s, %s)'
        cursor = connection.cursor()
        cursor.execute(sql, (chair_pid.get(), chair.get()))
        connection.commit()
        tk.Label(path29, text="Wheelchair Updated.                      ").grid(row=3, column=0)

    except:
        tk.Label(path29, text="Wheelchair update failed.").grid(row=3, column=0)


def update_chair():
    path27.destroy()
    global path29
    path29 = tk.Tk()
    tk.Label(path29, text="Enter Participant ID: ").grid(row=0, column=0)
    tk.Label(path29, text="Select New Chair Preference: ").grid(row=1, column=0)
    global chair_pid
    chair_pid = tk.Entry(path29)
    chair_pid.grid(row=0, column=1)
    global chair
    chair = tk.StringVar(path29)
    chair_options = [
        "push-rim",
        "other"
    ]
    chair.set(chair_options[0])
    tk.OptionMenu(path29, chair, *chair_options).grid(row=1, column=1)
    tk.Button(path29, text="Restart", command=start).grid(row=2,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)
    tk.Button(path29, text="Update Wheelchair Preference", command=update_chair_go).grid(row=2,
                                                                                         column=1,
                                                                                         sticky=tk.W,
                                                                                         pady=1)


def edit_part_select():
    path15.destroy()
    global path27
    path27 = tk.Tk()
    tk.Label(path27, text="Choose Athlete Type").grid(row=0, column=0)
    tk.Button(path27, text="Runner", command=update_shoes).grid(row=1,
                                                                column=0,
                                                                sticky=tk.W,
                                                                pady=4)
    tk.Button(path27, text="Wheelchair", command=update_chair).grid(row=1,
                                                                    column=1,
                                                                    sticky=tk.W,
                                                                    pady=4)
    tk.Button(path27, text="Restart", command=start).grid(row=2,
                                                          column=1,
                                                          sticky=tk.W,
                                                          pady=1)


def edit_parts():
    path3.destroy()
    global path15
    path15 = tk.Tk()
    tk.Button(path15, text="Add Participant", command=part_type).grid(row=0,
                                                                      column=0,
                                                                      sticky=tk.W,
                                                                      pady=4)
    tk.Button(path15, text="Delete Participant", command=delete_parts).grid(row=0,
                                                                            column=1,
                                                                            sticky=tk.W,
                                                                            pady=4)
    tk.Button(path15, text="Delete Registered Athlete", command=delete_reg).grid(row=0,
                                                                                 column=2,
                                                                                 sticky=tk.W,
                                                                                 pady=4)
    tk.Button(path15, text="Update Participant", command=edit_part_select).grid(row=0,
                                                                                column=3,
                                                                                sticky=tk.W,
                                                                                pady=4)
    tk.Button(path15, text="Restart", command=start).grid(row=1,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def add_spon_go():
    try:
        sql = 'CALL add_sponsor(%s,%s,%s)'
        cursor = connection.cursor()
        cursor.execute(sql, (name.get(), amt.get(), year.get()))
        connection.commit()
        tk.Label(path20, text="Sponsor Added.                                                 "
                              "              ").grid(row=4, column=0)

    except:
        tk.Label(path20, text="Sponsor add failed. Please ensure your inputs are valid and "
                              "try again.").grid(row=4, column=0)


def add_spon():
    path16.destroy()
    global path20
    path20 = tk.Tk()
    tk.Label(path20, text="Enter Sponsor Name: ").grid(row=0, column=0)
    tk.Label(path20, text="Select Sponsor Amount: ").grid(row=1, column=0)
    tk.Label(path20, text="Select Sponsorship Year ").grid(row=2, column=0)
    global name
    name = tk.Entry(path20)
    name.grid(row=0, column=1)

    global amt
    amt = tk.IntVar(path20)
    amt_options = [
        10000000,
        5000000,
        1000000,
        500000,
        100000
    ]
    amt.set(amt_options[0])
    tk.OptionMenu(path20, amt, *amt_options).grid(row=1, column=1)
    global year
    year = tk.IntVar(path20)
    year_options = [
        2017,
        2018,
        2019
    ]
    year.set(year_options[0])
    tk.OptionMenu(path20, year, *year_options).grid(row=2, column=1)
    tk.Button(path20, text="Add", command=add_spon_go).grid(row=3, column=1,
                                                            sticky=tk.W,
                                                            pady=4)
    tk.Button(path20, text="Restart", command=start).grid(row=4,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def delete_spon_go():
    try:
        sql = 'CALL delete_sponsor(%s)'
        cursor = connection.cursor()
        cursor.execute(sql, sid_delete.get())
        connection.commit()
        tk.Label(path24, text="Sponsor Deleted.                            ").grid(row=3, column=0)

    except:
        tk.Label(path24, text="Sponsor delete failed. Please try again.").grid(row=3, column=0)


def delete_spons():
    path16.destroy()
    global path24
    path24 = tk.Tk()
    tk.Label(path24, text="Enter ID of Sponsor to Delete: ").grid(row=0, column=0)
    global sid_delete
    sid_delete = tk.Entry(path24)
    sid_delete.grid(row=0, column=1)
    tk.Button(path24, text="Delete Sponsor", command=delete_spon_go).grid(row=1,
                                                                          column=1,
                                                                          sticky=tk.W,
                                                                          pady=1)
    tk.Button(path24, text="Restart", command=start).grid(row=1,
                                                          column=3,
                                                          sticky=tk.W,
                                                          pady=1)


def update_spon_go():
    try:
        sql = 'CALL update_sponsor_amt(%s,%s,%s)'
        cursor = connection.cursor()
        cursor.execute(sql, (spon_id.get(), year.get(), amt.get()))
        connection.commit()
        tk.Label(path30, text="Sponsor Amount Updated.           ").grid(row=4, column=0)

    except:
        tk.Label(path30, text="Sponsor amount update failed.").grid(row=4, column=0)


def update_spon():
    path16.destroy()
    global path30
    path30 = tk.Tk()
    tk.Label(path30, text="Enter Sponsor ID: ").grid(row=0, column=0)
    tk.Label(path30, text="Select New Sponsor Amount: ").grid(row=1, column=0)
    tk.Label(path30, text="Select Sponsorship Year ").grid(row=2, column=0)
    global spon_id
    spon_id = tk.Entry(path30)
    spon_id.grid(row=0, column=1)

    global amt
    amt = tk.IntVar(path30)
    amt_options = [
        10000000,
        5000000,
        1000000,
        500000,
        100000
    ]
    amt.set(amt_options[0])
    tk.OptionMenu(path30, amt, *amt_options).grid(row=1, column=1)
    global year
    year = tk.IntVar(path30)
    year_options = [
        2017,
        2018,
        2019
    ]
    year.set(year_options[0])
    tk.OptionMenu(path30, year, *year_options).grid(row=2, column=1)
    tk.Button(path30, text="Update Sponsorship Amount", command=update_spon_go).grid(row=3, column=1,
                                                                                     sticky=tk.W,
                                                                                     pady=4)
    tk.Button(path30, text="Restart", command=start).grid(row=4,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def edit_spons():
    path3.destroy()
    global path16
    path16 = tk.Tk()
    tk.Button(path16, text="Add Sponsor", command=add_spon).grid(row=0,
                                                                 column=0,
                                                                 sticky=tk.W,
                                                                 pady=4)
    tk.Button(path16, text="Delete Sponsor", command=delete_spons).grid(row=0,
                                                                        column=1,
                                                                        sticky=tk.W,
                                                                        pady=4)
    tk.Button(path16, text="Update Sponsor", command=update_spon).grid(row=0,
                                                                       column=2,
                                                                       sticky=tk.W,
                                                                       pady=4)
    tk.Button(path16, text="Restart", command=start).grid(row=1,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def add_vol_go():
    try:
        sql = 'CALL add_volunteer(%s,%s)'
        cursor = connection.cursor()
        cursor.execute(sql, (v_first_name.get(), v_last_name.get()))
        connection.commit()
        tk.Label(path21, text="Volunteer Added.                                                 "
                              "                ").grid(row=3, column=0)

    except:
        tk.Label(path21, text="Volunteer add failed. Please ensure your inputs are valid and "
                              "try again.").grid(row=3, column=0)


def add_vol():
    path17.destroy()
    global path21
    path21 = tk.Tk()
    tk.Label(path21, text="Volunteer First Name: ").grid(row=0, column=0)
    tk.Label(path21, text="Volunteer Last Name: ").grid(row=1, column=0)
    global v_first_name
    v_first_name = tk.Entry(path21)
    v_first_name.grid(row=0, column=1)
    global v_last_name
    v_last_name = tk.Entry(path21)
    v_last_name.grid(row=1, column=1)
    tk.Button(path21, text="Add Volunteer", command=add_vol_go).grid(row=2,
                                                                     column=1,
                                                                     sticky=tk.W,
                                                                     pady=2)
    tk.Button(path21, text="Restart", command=start).grid(row=3,
                                                          column=1,
                                                          sticky=tk.W,
                                                          pady=1)


def delete_vol_go():
    try:
        sql = 'CALL delete_volunteer(%s)'
        cursor = connection.cursor()
        cursor.execute(sql, vid_delete.get())
        connection.commit()
        tk.Label(path25, text="Volunteer Deleted.                            ").grid(row=3, column=0)

    except:
        tk.Label(path25, text="Volunteer delete failed. Please try again.").grid(row=3, column=0)
        tk.Label(path25, text="Note that volunteers may not be deleted if they have registered participants.").grid(
            row=4, column=0)


def delete_vols():
    path17.destroy()
    global path25
    path25 = tk.Tk()
    tk.Label(path25, text="Enter ID of Volunteer to Delete: ").grid(row=0, column=0)
    global vid_delete
    vid_delete = tk.Entry(path25)
    vid_delete.grid(row=0, column=1)
    tk.Button(path25, text="Delete Volunteer", command=delete_vol_go).grid(row=1,
                                                                           column=1,
                                                                           sticky=tk.W,
                                                                           pady=1)
    tk.Button(path25, text="Restart", command=start).grid(row=1,
                                                          column=3,
                                                          sticky=tk.W,
                                                          pady=1)


def update_vol_go():
    try:
        sql = 'CALL update_volunteer_name(%s,%s,%s)'
        cursor = connection.cursor()
        cursor.execute(sql, (v_id.get(), v_first_name.get(), v_last_name.get()))
        connection.commit()
        tk.Label(path31, text="Volunteer Name Updated.           ").grid(row=4, column=0)

    except:
        tk.Label(path31, text="Volunteer name update failed.").grid(row=4, column=0)


def update_vol():
    path17.destroy()
    global path31
    path31 = tk.Tk()
    tk.Label(path31, text="Volunteer ID: ").grid(row=0, column=0)
    tk.Label(path31, text="Volunteer First Name: ").grid(row=1, column=0)
    tk.Label(path31, text="Volunteer Last Name: ").grid(row=2, column=0)
    global v_id
    v_id = tk.Entry(path31)
    v_id.grid(row=0, column=1)
    global v_first_name
    v_first_name = tk.Entry(path31)
    v_first_name.grid(row=1, column=1)
    global v_last_name
    v_last_name = tk.Entry(path31)
    v_last_name.grid(row=2, column=1)
    tk.Button(path31, text="Update Volunteer", command=update_vol_go).grid(row=3,
                                                                           column=1,
                                                                           sticky=tk.W,
                                                                           pady=2)
    tk.Button(path31, text="Restart", command=start).grid(row=4,
                                                          column=1,
                                                          sticky=tk.W,
                                                          pady=1)


def edit_vols():
    path3.destroy()
    global path17
    path17 = tk.Tk()
    tk.Button(path17, text="Add Volunteer", command=add_vol).grid(row=0,
                                                                  column=0,
                                                                  sticky=tk.W,
                                                                  pady=4)
    tk.Button(path17, text="Delete Volunteer", command=delete_vols).grid(row=0,
                                                                         column=1,
                                                                         sticky=tk.W,
                                                                         pady=4)
    tk.Button(path17, text="Update Volunteer", command=update_vol).grid(row=0,
                                                                        column=2,
                                                                        sticky=tk.W,
                                                                        pady=4)
    tk.Button(path17, text="Restart", command=start).grid(row=1,
                                                          column=2,
                                                          sticky=tk.W,
                                                          pady=1)


def edit_data():
    path1.destroy()
    global path3
    path3 = tk.Tk()
    tk.Button(path3, text="Participant Data", command=edit_parts).grid(row=0,
                                                                       column=0,
                                                                       sticky=tk.W,
                                                                       pady=4)
    tk.Button(path3, text="Sponsor Data", command=edit_spons).grid(row=0,
                                                                   column=1,
                                                                   sticky=tk.W,
                                                                   pady=4)
    tk.Button(path3, text="Volunteer Data", command=edit_vols).grid(row=0,
                                                                    column=2,
                                                                    sticky=tk.W,
                                                                    pady=4)
    tk.Button(path3, text="Restart", command=start).grid(row=1,
                                                         column=2,
                                                         sticky=tk.W,
                                                         pady=1)


def show_p_log():
    path1.destroy()
    global path32
    path32 = tk.Tk()
    sql = 'CALL view_audit_log()'
    cursor = connection.cursor()
    cursor.execute(sql)

    aud = cursor.fetchall()

    place = 0
    for aud in aud:
        place += 1
        tk.Label(path32, text="Participant ID").grid(row=0, column=0)
        tk.Label(path32, text="Participant First Name").grid(row=0, column=1)
        tk.Label(path32, text="Participant Last Name").grid(row=0, column=2)
        tk.Label(path32, text="Participant Status").grid(row=0, column=3)
        tk.Label(path32, text=aud["part_id"]).grid(row=place, column=0)
        tk.Label(path32, text=aud["first_name"]).grid(row=place, column=1)
        tk.Label(path32, text=aud["last_name"]).grid(row=place, column=2)
        tk.Label(path32, text=aud["status_check"]).grid(row=place, column=3)

    tk.Button(path32, text="Restart", command=start).grid(row=0,
                                                          column=4,
                                                          sticky=tk.W,
                                                          pady=1)


def show_r_log():
    path1.destroy()
    global path33
    path33 = tk.Tk()
    sql = 'CALL view_audit_log_r()'
    cursor = connection.cursor()
    cursor.execute(sql)

    aud = cursor.fetchall()

    place = 0
    for aud in aud:
        place += 1
        tk.Label(path33, text="Participant ID").grid(row=0, column=0)
        tk.Label(path33, text="Race Year").grid(row=0, column=1)
        tk.Label(path33, text="Participant Age").grid(row=0, column=2)
        tk.Label(path33, text="Finishing Time").grid(row=0, column=3)
        tk.Label(path33, text="Overall Rank").grid(row=0, column=4)
        tk.Label(path33, text="Gender Rank").grid(row=0, column=5)
        tk.Label(path33, text="Division Rank").grid(row=0, column=6)
        tk.Label(path33, text="Volunteer ID").grid(row=0, column=7)
        tk.Label(path33, text="Status").grid(row=0, column=8)
        tk.Label(path33, text=aud["part_id"]).grid(row=place, column=0)
        tk.Label(path33, text=aud["race"]).grid(row=place, column=1)
        tk.Label(path33, text=aud["age_on_race"]).grid(row=place, column=2)
        tk.Label(path33, text=aud["finishing_time"]).grid(row=place, column=3)
        tk.Label(path33, text=aud["overall_rank"]).grid(row=place, column=4)
        tk.Label(path33, text=aud["gender_rank"]).grid(row=place, column=5)
        tk.Label(path33, text=aud["division_rank"]).grid(row=place, column=6)
        tk.Label(path33, text=aud["v_id"]).grid(row=place, column=7)
        tk.Label(path33, text=aud["status_check"]).grid(row=place, column=8)

    tk.Button(path33, text="Restart", command=start).grid(row=0,
                                                          column=9,
                                                          sticky=tk.W,
                                                          pady=1)


def start():
    global path1
    path1 = tk.Tk()
    tk.Button(path1, text="View Data", command=view_data).grid(row=0,
                                                               column=0,
                                                               sticky=tk.W,
                                                               pady=4)
    tk.Button(path1, text="Edit Data", command=edit_data).grid(row=0,
                                                               column=1,
                                                               sticky=tk.W,
                                                               pady=4)
    tk.Button(path1, text="View Participant Audit Log", command=show_p_log).grid(row=0,
                                                                                 column=2,
                                                                                 sticky=tk.W,
                                                                                 pady=4)
    tk.Button(path1, text="View Registered Audit Log", command=show_r_log).grid(row=0,
                                                                                column=3,
                                                                                sticky=tk.W,
                                                                                pady=4)
    tk.mainloop()


start()
