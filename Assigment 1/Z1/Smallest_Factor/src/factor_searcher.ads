pragma SPARK_Mode;
package Factor_Searcher with SPARK_Mode is

procedure Smallest_Factor (N : in out Positive; Factor : out Positive)
with
Pre => N > 1,
Post => (Factor > 1) and

(N'Old rem Factor = 0) and
(for all J in 2 .. Factor - 1 => N'Old rem J /= 0);

end Factor_Searcher;
