FROM alpine:3.20
WORKDIR /app
COPY app/app.sh /app/app.sh
RUN chmod +x /app/app.sh
ENV STUDENT_NAME=Eduard \
    STUDENT_SURNAME=Pan \
    STUDENT_GROUP=IT2-2312 \
    STUDENT_ID=37619
EXPOSE 5000
CMD ["/app/app.sh"]
