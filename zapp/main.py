from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Item(BaseModel):
    name: str
    description: str = None
    price: float
    tax: float = None

@app.get("/")
def read_root():
    return {"message": "Welcome to the FastAPI app!"}

@app.get("/items/{item_id}")
def read_item(item_id: int):
    return {"item_id": item_id, "message": f"Details of item {item_id}"}

@app.post("/items/")
def create_item(item: Item):
    return {"message": "Item created successfully", "item": item}
