// 上海侧各业务方
interface shanghai_business {
    public void pay();
}

// 上海侧收银台
class shanghai_Cashier implements shanghai_business {
    public void pay() {
        System.out.println("通过上海侧收银台来进行支付");
    }
}

// 北京侧收银台
class beijing_Cashier {
    public void pay_with_beijing() {
        System.out.println("通过北京侧收银台来进行支付");
    }
}

// 适配器类，直接关联被适配类，同时实现标准接口
class AdapterC implements shanghai_business {
    // 直接关联被适配类
    private beijing_Cashier beijing_cashier;

    // 可以通过构造函数传入具体需要适配的被适配类对象
    public AdapterC(beijing_Cashier beijing_cashier) {
        this.beijing_cashier = beijing_cashier;
    }

    public void pay() {
        // 这里是使用委托的方式完成北京侧的接口封装
        this.beijing_cashier.pay_with_beijing();
    }
}

// 测试类
public class ClientC {
    public static void main(String[] args) {
        // 使用上海侧的收银台
        shanghai_business shanghai_cashier = new shanghai_Cashier();
        shanghai_cashier.pay();

        // 使用北京侧的收银台
        shanghai_business adapterC = new AdapterC(new beijing_Cashier());
        adapterC.pay();
    }
}