
FROM python:3.11-slim AS build
WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt


FROM python:3.11-slim
WORKDIR /app
COPY --from=build /root/.local /root/.local
COPY . .
ENV PATH=/root/.local/bin:$PATH
CMD ["python", "app.py"]
