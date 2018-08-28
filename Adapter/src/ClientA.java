// 目标接口，或称为标准接口
interface TargetA {
    public void request();
}

// 具体目标类，只提供普通功能
class ConcreteTargetA implements TargetA {
    public void request() {
        System.out.println("普通类 具有 普通功能...");
    }
}

// 已存在的、具有特殊功能、但不符合我们既有的标准接口的类
class AdapteeA {
    public void specificRequest() {
        System.out.println("被适配类具有 特殊功能...");
    }
}

// 适配器类，继承了被适配类，同时实现标准接口
class AdapterA extends AdapteeA implements TargetA {
    public void request() {
        super.specificRequest();
    }
}

// 测试类
public class ClientA {
    public static void main(String[] args) {
        // 使用普通功能类
        TargetA concreteTarget = new ConcreteTargetA();
        concreteTarget.request();

        // 使用特殊功能类，即适配类
        TargetA adapter = new AdapterA();
        adapter.request();
    }
}