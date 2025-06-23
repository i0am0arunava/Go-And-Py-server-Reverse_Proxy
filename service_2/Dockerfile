FROM python:3.12-slim-bookworm

# Install required tools for downloading uv
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates

# Add and run uv installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Add uv to PATH
ENV PATH="/root/.local/bin/:$PATH"

WORKDIR /app

COPY . .

# Optional: Install dependencies (if you have a requirements.txt)
# RUN uv pip install -r requirements.txt

EXPOSE 8002

CMD ["uv", "run", "app.py"]
