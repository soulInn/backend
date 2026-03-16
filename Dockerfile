FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# 핵심: 이미 밖(GitHub Actions)에서 빌드된 파일을 가져오기만 함
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]