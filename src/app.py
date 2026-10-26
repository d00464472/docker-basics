import os
import cowsay

app_env = os.getenv("APP_ENV", "development")

print("Welcome to my Docker application!")
print(f"Application environment: {app_env}")
print(cowsay.get_output_string("cow", "My Python app is running!"))
