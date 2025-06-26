FROM python:3.10-slim

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY pyproject.toml ${APP_HOME}/pyproject.toml
COPY poetry.lock ${APP_HOME}/poetry.lock

RUN pip install poetry
RUN poetry config virtualenvs.create false 
RUN poetry lock
RUN poetry install --no-root

COPY . .

CMD [ "python", "bot.py" ]