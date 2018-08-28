package b;

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
    public CircularShape (Color color) {
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

public class SampleB {
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

        shape = new SquareShape(redColor);
        shape.program();
        shape = new SquareShape(blueColor);
        shape.program();
        shape = new SquareShape(greenColor);
        shape.program();

        shape = new TriangleShape(redColor);
        shape.program();
        shape = new TriangleShape(blueColor);
        shape.program();
        shape = new TriangleShape(greenColor);
        shape.program();
    }
}
