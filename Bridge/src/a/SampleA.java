package a;

class Shape {
    public void program() {
        System.out.println("形状");
    }
}

class CircularShape extends Shape {
    @Override
    public void program() {
        System.out.println("圆形");
    }
}

class SquareShape extends Shape {
    @Override
    public void program() {
        System.out.println("正方形");
    }
}

class TriangleShape extends Shape {
    @Override
    public void program() {
        System.out.println("三角形");
    }
}

class RedCircularShape extends CircularShape {
    @Override
    public void program() {
        System.out.println("红色的圆形");
    }
}

class BlueCircularShape extends CircularShape {
    @Override
    public void program() {
        System.out.println("蓝色的圆形");
    }
}

class GreenCircularShape extends CircularShape {
    @Override
    public void program() {
        System.out.println("绿色的圆形");
    }
}

class RedSquareShape extends SquareShape {
    @Override
    public void program() {
        System.out.println("红色的正方形");
    }
}

class BlueSquareShape extends SquareShape {
    @Override
    public void program() {
        System.out.println("蓝色的正方形");
    }
}

class GreenSquareShape extends SquareShape {
    @Override
    public void program() {
        System.out.println("绿色的正方形");
    }
}

class RedTriangleShape extends TriangleShape {
    @Override
    public void program() {
        System.out.println("红色的三角形");
    }
}

class BlueTriangleShape extends TriangleShape {
    @Override
    public void program() {
        System.out.println("蓝色的三角形");
    }
}

class GreenTriangleShape extends TriangleShape {
    @Override
    public void program() {
        System.out.println("绿色的三角形");
    }
}

public class SampleA {
    public static void main(String[] args) {
        RedCircularShape redCircularShape = new RedCircularShape();
        redCircularShape.program();
        BlueCircularShape blueCircularShape = new BlueCircularShape();
        blueCircularShape.program();
        GreenCircularShape greenCircularShape = new GreenCircularShape();
        greenCircularShape.program();

        RedSquareShape redSquareShape = new RedSquareShape();
        redSquareShape.program();
        BlueSquareShape blueSquareShape = new BlueSquareShape();
        blueSquareShape.program();
        GreenSquareShape greenSquareShape = new GreenSquareShape();
        greenSquareShape.program();

        RedTriangleShape redTriangleShape = new RedTriangleShape();
        redTriangleShape.program();
        BlueTriangleShape blueTriangleShape = new BlueTriangleShape();
        blueTriangleShape.program();
        GreenTriangleShape greenTriangleShape = new GreenTriangleShape();
        greenTriangleShape.program();
    }
}