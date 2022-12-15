# flutter_save
## Anotações de estudo

Pag. 8

### Shared Preferences
#### Salvando dados no dispositivo

Para salvar informações no dispositivo, precisaremos importar a biblioteca [Shared Preferences](https://pub.dev/packages/shared_preferences)

#### Salvando Dados
```dart
final pres = await SharedPreferences.getInstance();
await pres.setString("nomeChave", "valorSalvo"); //set para salvar
```
#### Recuperando Dados
```dart
final pres = await SharedPreferences.getInstance();
var = pres.getString("nomeChave") ?? "valorNulo"; // digite um valor caso seja nulo
// get para recuperar
// podemos receber outros valores alem de String
```

#### Removendo Dados
```dart
final pres = await SharedPreferences.getInstance();
pres.remove("nomeChave");
```
