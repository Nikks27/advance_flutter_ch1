# ch1

<h1 align="center"> 1.Change Theme</h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/advance_flutter_ch1/assets/148762716/a2ad0bd6-3685-413c-be5d-ddb376282393" height ="550">
   <img src = "https://github.com/Nikks27/advance_flutter_ch1/assets/148762716/3939d7df-4db3-4e8f-9c71-882aca3c05bc" height ="550">
  


</div>

<h1 align="center"> 1.Stepper Widget</h1>

<h1 align="left"></h1>

<div align ="center">

  <img src = "https://github.com/Nikks27/advance_flutter_ch1/assets/148762716/d3d076d1-c814-40cf-b28c-d69e61617470" height ="550">
   <img src = "https://github.com/Nikks27/advance_flutter_ch1/assets/148762716/f44a8322-e72d-4871-ad77-b51198bc9604" height ="550">



</div>



<h2 align="center">1. Information of Provider With State Management </h2>

## 1 State Management :

- ```State management in Flutter is crucial for building responsive and dynamic applications.```

## 2 State :

- ```A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.```

## 3 SetState :

- ```Rebuild the our stateful or stateless widget build method.```

## 4 Provider State Management :

- ```Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application.```

## 5 Provider package :

```
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
```

## 6 ChangeNotifier Class :

- ```ChangeNotifier is a simple class, which provides change notification to its listeners.```
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

## 7 ChangeNotifierProvider Widget :

- ```ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.```
- The following code snippets help to understand the concept of ChangeNotifierProvider.

## 8 Consumer Widget :

- ```It is a type of provider that does not do any fancy work.```
- It just calls the provider in a new widget and delegates its build implementation to the builder.


