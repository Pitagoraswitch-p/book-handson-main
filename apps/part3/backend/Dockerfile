# ---- Build ----
FROM gradle:7.6.1-jdk17 as builder

RUN mkdir /project
COPY . /project
WORKDIR /project
RUN gradle clean build -x test


# ---- Release ----
FROM gcr.io/distroless/java17-debian11

USER nonroot:nonroot
COPY --from=builder /project/build/libs/net.bookdevcontainer.todolist-0.0.1-SNAPSHOT.jar /app/net.bookdevcontainer.todolist-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/net.bookdevcontainer.todolist-0.0.1-SNAPSHOT.jar"]
