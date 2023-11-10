class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real',
          real: 1.0,
          dolar: 0.20,
          euro: 0.1909,
          bitcoin: 0.000005860647624),
      CurrencyModel(
          name: 'Dolar',
          real: 4.8853,
          dolar: 1.0,
          euro: 0.9328,
          bitcoin: 0.0000286184),
      CurrencyModel(
          name: 'Euro',
          real: 5.23,
          dolar: 1.0715,
          euro: 1.0,
          bitcoin: 0.000030668702664),
      CurrencyModel(
          name: 'Bitcoin',
          real: 170677.43,
          dolar: 34933.32,
          euro: 32616.69,
          bitcoin: 1.0),
    ];
  }
}
