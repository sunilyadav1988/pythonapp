FROM python:3.9-slim
WORKDIR /app
# Install dependencies if needed, or skip if handled by mounting
# RUN pip install flask
CMD ["python", "app.py"]

