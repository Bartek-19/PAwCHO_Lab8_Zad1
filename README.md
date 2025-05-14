# PAwCHO_Lab8_Zad1
Repozytorium przeznaczone jest do przechowania kodu aplikacji stworzonej na potrzeby laboratorium programowania aplikacji w chmurze obliczeniowej.

# Polecenia do zbudowania i uruchomienia aplikacji
docker buildx build -f Dockerfile -t docker.io/bartek19/lab:weather-app --push --cache-to type=registry,ref=docker.io/bartek19/cachedata_lab8,mode=max \ 
--cache-from type=registry,ref=docker.io/bartek19/cachedata_lab8 .

docker run -p 8000:8000 --name pogoda docker.io/bartek19/lab:weather-app

# Uwaga!
Podczas testów manualnych aplikacji występuje problem w 25 linijce pliku index.js - Node nie jest w stanie rozpoznać funkcji fetch().
Dodatkowo - folder node_modules został skompresowany do formatu .zip

# Repozytorium Dockerhub
https://hub.docker.com/repository/docker/bartek19/lab/general - lokalizacja "builda"
https://hub.docker.com/repository/docker/bartek19/cachedata_lab8/general - lokalizacja cache
