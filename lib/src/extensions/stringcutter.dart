extension StringCutter on String {
  String cut(int length) =>
      this.length > length ? substring(0, length) + '…' : this;
}
