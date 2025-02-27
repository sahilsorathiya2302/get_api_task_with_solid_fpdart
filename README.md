# get_api_task_with_solid_fpdart

This Flutter project demonstrates API integration using **GET** method while following **SOLID principles**, **Clean Architecture**, and best practices for folder structure.

## Features
- **GET API Integration**
- **Clean Architecture**
- **SOLID Principles**
- **Cubit for State Management**
- **Dependency Injection** with `get_it`
- **Retrofit for API Calls**
- **Dio & Pretty Dio Logger for Networking`
- **Proper Folder Structure**

## Project Structure
```
lib/
│── core/              # Core utilities (constants, themes, etc.)
│── data/              # Data layer (Models, Data Sources, Repositories)
│   ├── models/        # Model classes
│   ├── sources/       # Remote and Local Data Sources
│   ├── repositories/  # Repository Implementations
│── domain/            # Domain layer (Entities, UseCases, Repositories)
│── presentation/      # UI and State Management (Screens, Widgets, Controllers)
│── injection.dart     # get_it dependency injection
│── main.dart          # Entry Point
```

## Dependencies
Ensure you have the following dependencies in your `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.0.0
  retrofit: ^4.0.0
  json_annotation: ^4.8.1
  get_it: ^7.2.0
  fpdart: ^0.4.0
  logger: ^2.0.2
  flutter_bloc: ^8.1.2

dev_dependencies:
  retrofit_generator: ^5.0.0
  build_runner: ^2.4.0
  json_serializable: ^6.6.1
```

## API Service (Retrofit + Dio)
Example of API Service implementation:
```dart
@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/posts")
  Future<List<PostModel>> getPosts();
}
```

## Dependency Injection (get_it)
Setup `get_it` for dependency injection:
```dart
final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<Dio>(() => Dio());
}
```

## Setup & Run
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/get_api_task_with_solid_fpdart.git
   ```
2. Navigate to the project directory:
   ```sh
   cd get_api_task_with_solid_fpdart
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the project:
   ```sh
   flutter run
   ```

## Contribution
Feel free to contribute by opening issues or submitting pull requests. 🚀

---
### Author
Developed by **Sahil Sorathiya**
