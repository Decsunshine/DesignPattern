package c;

// 原有代码
abstract class Color {
    public abstract void draw();
}

class RedColor extends Color {
    @Override
    public void draw() {
        System.out.print("红色的");
    }
}

class BlueColor extends Color {
    @Override
    public void draw() {
        System.out.print("蓝色的");
    }
}

class GreenColor extends Color {
    @Override
    public void draw() {
        System.out.print("绿色的");
    }
}

abstract class Shape {
    protected Color mColor;

    public abstract void program();
}

class CircularShape extends Shape {
    public CircularShape(Color color) {
        this.mColor = color;
    }

    @Override
    public void program() {
        this.mColor.draw();
        System.out.println("圆形");
    }
}

class SquareShape extends Shape {
    public SquareShape(Color color) {
        this.mColor = color;
    }

    @Override
    public void program() {
        this.mColor.draw();
        System.out.println("正方形");
    }
}

class TriangleShape extends Shape {
    public TriangleShape(Color color) {
        this.mColor = color;
    }

    @Override
    public void program() {
        this.mColor.draw();
        System.out.println("三角形");
    }
}

// 新增代码
abstract class Size {
    protected Shape mShape;

    public abstract void change();
}

// 新添加的维度实现
class BigSize extends Size {
    public BigSize(Shape shape) {
        this.mShape = shape;
    }

    @Override
    public void change() {
        System.out.print("大的");
        this.mShape.program();
    }
}

class SmallSize extends Size {
    public SmallSize(Shape shape) {
        this.mShape = shape;
    }

    @Override
    public void change() {
        System.out.print("小的");
        this.mShape.program();
    }
}

public class SampleC {
    public static void main(String[] args) {
        Color redColor = new RedColor();
        Color blueColor = new BlueColor();
        Color greenColor = new GreenColor();

        Shape shape = new CircularShape(redColor);
        shape.program();
        shape = new CircularShape(blueColor);
        shape.program();
        shape = new CircularShape(greenColor);
        shape.program();

        Shape squareShape = new SquareShape(redColor);
        squareShape.program();
        squareShape = new SquareShape(blueColor);
        squareShape.program();
        squareShape = new SquareShape(greenColor);
        squareShape.program();

        Shape triangleShape = new TriangleShape(redColor);
        triangleShape.program();
        triangleShape = new TriangleShape(blueColor);
        triangleShape.program();
        triangleShape = new TriangleShape(greenColor);
        triangleShape.program();

        Size size = new BigSize(shape);
        size.change();
        size = new SmallSize(triangleShape);
        size.change();
    }
}
