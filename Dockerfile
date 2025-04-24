FROM python:3.13-alpine

RUN mkdir /app
WORKDIR /app

COPY main.py ./

# Create a new user with UID 10014
RUN addgroup -g 10014 choreo && \
    adduser  --disabled-password  --no-create-home --uid 10014 --ingroup choreo choreouser

# Copy the python source code into the container
COPY . .

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

USER 10014
ENTRYPOINT ["python3", "main.py"]
