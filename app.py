from fastapi import FastAPI, Request, status
from pydantic import BaseModel
import uvicorn

app = FastAPI()

@app.get('/')
def read_root():
    return {"Welcome": "Hi"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)