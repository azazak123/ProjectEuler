# Special Pythagorean triplet

$$a, b, c \in N, a < b < c$$

$$
\begin{equation*}
  \left\{
    \begin{aligned}
      & a^2 + b^2 = c^2\\
      & a + b + c = 1000\\
    \end{aligned}
  \right.
\end{equation*}
$$

$$\begin{equation*}
  \left\{
    \begin{aligned}
      & a^2 + b^2 = (1000 - a - b)^2\\
      & c = 1000 - a - b\\
    \end{aligned}
  \right.
\end{equation*}
$$

$$a^{2} + b^{2} = 1000^{2} + a^{2} + b^{2} - 2 \cdot 1000 \cdot a - 2 \cdot 1000 \cdot b + 2 \cdot a \cdot b$$

$$1000^2 - 2 \cdot 1000 \cdot a + b(2 \cdot a - 2 \cdot 1000 \cdot a) = 0$$

$$
\begin{equation*}
  \left\{
    \begin{aligned}
      & b = \frac{1000^2 - 2000 \cdot a}{2000 \cdot a - 2 \cdot a}\\
      & c = 1000 - a - \frac{1000^2 - 2000 \cdot a}{2000 \cdot a - 2 \cdot a}\\
      & 1 \leq a \leq 998
    \end{aligned}
  \right.
\end{equation*}
$$
