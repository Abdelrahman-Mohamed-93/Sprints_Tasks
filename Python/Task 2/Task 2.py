def is_leap():
    year=input("Kindly enter the year to be checked: ")
    if int(year) % 4 == 0 and int(year) % 100 == 0 and int(year) % 400 == 0:
        print(year + " is a leap year")
        return True
    elif int(year) % 4 != 0:
        print(year+" is not a multiple of 4, hence not a leap year")
        return False
    elif int(year) % 4 == 0 and int(year) % 100 == 0 and int(year) % 400 != 0:
        print(year+" is not a multiple of 400, hence not a leap year")
        return False
is_leap()
