using System;

namespace Syntax
{
  class Syntax
  {
    static void Main() {
      uint a = 10;
      float b = 10.5F;

      int[] pole = new int[] { 1, 2, 3 };

      int posledni = 0;

      for(int i = 0; i < pole.Length; i = i + 2) {
        posledni = pole[i];
      }

      Console.WriteLine(posledni);
    }
  }
}
