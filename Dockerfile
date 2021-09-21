FROM rust:1.55

WORKDIR /chat-server

COPY Cargo.toml Cargo.toml
COPY ./src ./src

RUN cargo build --release

RUN cargo install --path .

CMD ["chat-server"]