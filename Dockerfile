FROM rust:1-slim-bookworm

WORKDIR /usr/src/app
RUN cargo install agate

CMD agate --content /var/gemini --addr [::]:1965 --addr 0.0.0.0:1965 --hostname "$HOSTNAME" --lang "$LANG"