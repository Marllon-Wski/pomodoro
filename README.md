# Pomodoro

Aplicativo de temporizador Pomodoro desenvolvido em Flutter, com suporte a Android, iOS, Web e Windows.

## Sobre o projeto

O aplicativo implementa a tecnica Pomodoro, alternando automaticamente entre periodos de trabalho e descanso. O cronometro exibe o tempo restante em tempo real e muda de cor conforme o intervalo ativo: vermelho para trabalho e verde para descanso. Os tempos de cada intervalo podem ser ajustados diretamente na tela principal.

## Funcionalidades

- Cronometro com contagem regressiva em minutos e segundos
- Alternancia automatica entre intervalo de trabalho e descanso ao fim de cada ciclo
- Configuracao de duracao individual para trabalho e descanso (em minutos)
- Controles de iniciar, parar e reiniciar o cronometro
- Indicacao visual do intervalo atual por cor de fundo (vermelho / verde)
- Bloqueio dos controles de ajuste de tempo durante o intervalo em andamento

## Tecnologias utilizadas

- [Flutter](https://flutter.dev/) — framework principal
- [MobX](https://pub.dev/packages/mobx) + [flutter_mobx](https://pub.dev/packages/flutter_mobx) — gerenciamento de estado reativo
- [get_it](https://pub.dev/packages/get_it) — injecao de dependencias
- [build_runner](https://pub.dev/packages/build_runner) + [mobx_codegen](https://pub.dev/packages/mobx_codegen) — geracao de codigo

## Estrutura do projeto

```
lib/
  main.dart                  # Ponto de entrada e registro do store
  app.dart                   # Configuracao do MaterialApp
  pages/
    pomodoro.dart            # Tela principal
  components/
    cronometro.dart          # Widget do cronometro e botoes de controle
    botao_controle.dart      # Botao reutilizavel (Iniciar / Parar / Reiniciar)
    entrada_tempo.dart       # Controle de incremento/decremento de minutos
  store/
    pomodoro_store.dart      # Estado e logica do cronometro Pomodoro
    contador_store.dart      # Store auxiliar de contador
```

## Pre-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) >= 2.16.2
- Dart SDK >= 2.16.2

## Instalacao e execucao

Clone o repositorio e instale as dependencias:

```bash
git clone <url-do-repositorio>
cd pomodoro
flutter pub get
```

Gere os arquivos de codigo do MobX:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Execute o aplicativo:

```bash
flutter run
```

Para escolher a plataforma alvo:

```bash
flutter run -d chrome      # Web
flutter run -d windows     # Windows
flutter run -d android     # Android
flutter run -d ios         # iOS
```

## Build

```bash
flutter build apk          # Android
flutter build ios          # iOS
flutter build web          # Web
flutter build windows      # Windows
```

## Licenca

Projeto de uso privado. Consulte o responsavel pelo repositorio para informacoes sobre licenciamento.
