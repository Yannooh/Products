# On monte l'image l'image python 3.9
FROM python:3.9

# On le copie dans le directory api de l'image
COPY ./ /Products/

# Représente le directory
WORKDIR /Products/

# On met à jour et installe uvicorn
RUN apt-get update && pip3 install -r requirements.txt

# définit le port que l'on met à disposition
EXPOSE 8000

# On exécute uvicorn ... au local
CMD uvicorn api:api --host 0.0.0.0
