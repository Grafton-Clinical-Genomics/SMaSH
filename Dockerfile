FROM python:latest

#set up venv with dependencies
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"
RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    pip install -r requirements.txt

WORKDIR /SMaSH

COPY . .
RUN rm requirements.txt
ENV PATH="/venv/bin:/SMaSH:$PATH"

ENTRYPOINT ["SMaSH.py"]

