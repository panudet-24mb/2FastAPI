from DBUtils.PooledDB import PooledDB
import pymysql


mySQLConnectionPool = PooledDB(creator=pymysql,

                               host='localhost',

                               user='admin',

                               password='Passw0rd_2020',
                               #  user= 'root',

                               #  password='',

                               database='2fast',

                               autocommit=True,

                               charset='utf8mb4',

                               cursorclass=pymysql.cursors.DictCursor,

                               blocking=False,

                               maxconnections=60)

connection = mySQLConnectionPool.connection()
