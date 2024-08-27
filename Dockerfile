FROM python:3.12.5-slim-bookworm as build

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir jupyter

FROM python:3.12.5-slim-bookworm

WORKDIR /app
COPY --from=build /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=build /usr/local/bin/ /usr/local/bin/

EXPOSE 8888

ENV NAME World

COPY . .

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]