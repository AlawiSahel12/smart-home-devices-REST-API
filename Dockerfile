FROM python:3.13.3-alpine

LABEL maintainer="smarthome"

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy requirements first to take advantage of Docker cache
COPY ./requirements.txt /tmp/requirements.txt

# Install Python packages
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    apk add --no-cache --virtual .build-deps build-base musl-dev && \
    /py/bin/pip install --no-cache-dir -r /tmp/requirements.txt && \
    apk del .build-deps && \
    rm -rf /tmp && \
    adduser -D django-user

ENV PATH="/py/bin:$PATH"

# Copy app source code
COPY ./app /app

EXPOSE 8000

USER django-user

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
