FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
# 깃헙 액션에서 빌드된 jar 파일 복사
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]