.class Lcom/punchbox/v4/d/g;
.super Landroid/graphics/drawable/shapes/Shape;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/a;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/g;->a:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/punchbox/v4/d/g;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v1}, Lcom/punchbox/v4/d/a;->k(Lcom/punchbox/v4/d/a;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/punchbox/v4/d/g;->a:Lcom/punchbox/v4/d/a;

    invoke-static {v2}, Lcom/punchbox/v4/d/a;->l(Lcom/punchbox/v4/d/a;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
