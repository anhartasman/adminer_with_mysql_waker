FROM adminer:latest

COPY --chmod=755 start.sh /start.sh

EXPOSE 8080

CMD ["/start.sh"]
