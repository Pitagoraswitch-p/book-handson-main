FROM gradle:7.6.1-jdk17 as builder
RUN mkdir /project
COPY . /project
WORKDIR /project
RUN gradle build -x test
RUN ls
RUN mkdir -p build/libs
WORKDIR /project/build/libs
RUN ls
RUN jar -xf ./*SNAPSHOT.jar

FROM gcr.io/distroless/java17-debian11
USER nonroot:nonrootg
ARG DEPENDENCY=/project/build/libs
RUN ls
COPY --from=builder ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=builder ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=builder ${DEPENDENCY}/BOOT-INF/classes /app
RUN ls
EXPOSE 8080
ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]
