<?php
// 5. Дан код:
// Что он выведет на каждом шаге? Почему?

class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
$a1 = new A();
$a2 = new A();
$a1->foo(); // 1
$a2->foo(); // 2
$a1->foo(); // 3
$a2->foo(); // 4

// Значение static переменной сохраняется после окончания работы функции
// и при последующих вызовах функции вместо присваивания переменная получает сохраненное ранее значение
// и так как динамические методы в PHP "не размножаются»" (даже если у нас будет несколько объектов этого класса)
// просто при каждом вызове в него будет пробрасываться разный $this.


//6. Объясните результаты в этом случае.

class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B extends A {
}
$a1 = new A();
$b1 = new B();
$a1->foo(); // 1
$b1->foo(); // 1
$a1->foo(); // 2
$b1->foo(); // 2

// Со статической переменной всё так же, как и в задании выше.
// А функция при наследовании, уже копируется.

//7*. Дан код
//  Что он выведет на каждом шаге? Почему?

class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B extends A {
}
$a1 = new A;
$b1 = new B;
$a1->foo(); // 1
$b1->foo(); // 1
$a1->foo(); // 2
$b1->foo(); // 2

// Всё тоже самое, только при создании экземпляров не ставятся скобки,
// потому что если не передеются параметры, то скобки можно не писать.
