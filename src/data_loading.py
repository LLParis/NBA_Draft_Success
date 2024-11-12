# src/data_loading.py
from sqlalchemy import create_engine
from config import DATABASE
import pandas as pd

def connect_to_db():
    engine = create_engine(f"{DATABASE['drivername']}://{DATABASE['username']}:{DATABASE['password']}@{DATABASE['host']}:{DATABASE['port']}/{DATABASE['database']}")
    return engine

def load_player_data(query):
    engine = connect_to_db()
    df = pd.read_sql(query, engine)
    return df
