with Ada.Text_IO;
use Ada.Text_IO;
package Poly with SPARK_Mode Is

      type Vector is array (Natural range <>) of Integer;
      function Horner (X : Integer; A : Vector) return Integer;

 end Poly;
