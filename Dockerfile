ARG base_image=quay.io/st4sd/official-base/st4sd-runtime-core
FROM $base_image

ENV PYTHONUNBUFFERED 0
COPY app.py ./

ARG BASE_PATH
ENV BASE_PATH=$BASE_PATH

CMD ["python3","-u","app.py"]
