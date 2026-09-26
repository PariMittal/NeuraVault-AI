FROM gcc:13

WORKDIR /app

COPY main.cpp .
COPY httplib.h .
COPY index.html .

RUN g++ -std=c++17 -O2 main.cpp -o server

EXPOSE 10000

CMD ["./server"]
