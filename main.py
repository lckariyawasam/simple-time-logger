import time
import os

myenv = os.environ.get("MY_ENV_VAR", "default_value")

# Log the current time, once every 5 seconds
for _ in range(20):
    print(myenv)
    time.sleep(5)
