#!/usr/bin/env python3
# python script that creates the alx_book_store MySQL database

from mysql.connector import connect, Error
from getpass import getpass

try:
    # use WITH so the connection auto-closes, and use 'password=' (not 'passwd')
    with connect(
        host="localhost",
        user="rooly",
        password=getpass("MySQL password: "),
        #autocommit=True,  # optional; DDL auto-commits anyway
    ) as connection:
        create_database_query = (
            "CREATE DATABASE IF NOT EXISTS alx_book_store "
            "DEFAULT CHARACTER SET utf8mb4 "
            "COLLATE utf8mb4_0900_ai_ci"
        )
        # call cursor() and use it as a context manager
        with connection.cursor() as cursor:
            cursor.execute(create_database_query)
            print("Database 'alx_book_store' created (or already exists).")
except Error as e:
    print(f"MySQL error: {e}")
