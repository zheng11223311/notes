.class Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;
.super Ljava/lang/Object;
.source "Gift2DView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "se"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 111
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 112
    .local v1, "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v3, v4

    .line 113
    .local v2, "y":F
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$000(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lorg/jbox2d/common/Vec2;

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v1

    add-float v4, v2, v5

    invoke-direct {v0, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 114
    .local v0, "vec2":Lorg/jbox2d/common/Vec2;
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$100(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Lorg/jbox2d/dynamics/World;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$1;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$100(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Lorg/jbox2d/dynamics/World;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jbox2d/dynamics/World;->setGravity(Lorg/jbox2d/common/Vec2;)V

    .line 116
    :cond_0
    return-void

    .line 113
    .end local v0    # "vec2":Lorg/jbox2d/common/Vec2;
    :cond_1
    new-instance v0, Lorg/jbox2d/common/Vec2;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    invoke-direct {v0, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    goto :goto_0
.end method
