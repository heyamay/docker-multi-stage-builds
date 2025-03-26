# --- Stage 1: Build Stage ---
FROM python:3.10-slim AS builder

# Set working directory
WORKDIR /app

# Install build dependencies (if any). For our simple app, we don’t need extra ones.
# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --user -r requirements.txt

# Copy the rest of the application code
COPY . .

# --- Stage 2: Final Stage ---
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy installed packages from builder stage. Note: the --from flag copies the user-installed packages.
COPY --from=builder /root/.local /root/.local

# Update PATH so that Python can find the user-installed packages
ENV PATH=/root/.local/bin:$PATH

# Copy the application code
COPY --from=builder /app /app

# Expose the port Flask uses
EXPOSE 5000

# Define environment variables (adjust as needed)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the application
CMD ["flask", "run"]
