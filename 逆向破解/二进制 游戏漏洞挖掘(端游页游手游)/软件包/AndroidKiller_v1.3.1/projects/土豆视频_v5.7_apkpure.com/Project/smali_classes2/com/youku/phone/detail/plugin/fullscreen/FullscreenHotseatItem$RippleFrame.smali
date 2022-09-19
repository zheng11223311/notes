.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;
.super Ljava/lang/Object;
.source "FullscreenHotseatItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RippleFrame"
.end annotation


# instance fields
.field mAnimStart:J

.field mEndRadius:F

.field mFeedbackPaint:Landroid/graphics/Paint;

.field mMaxRadius:F

.field mStartRadius:F

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;ILandroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->drawMagicFlame(ILandroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMagicFlame(ILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "duration"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    mul-int/lit8 v4, p1, 0x7d

    div-int/lit16 v4, v4, 0x3e8

    rsub-int/lit8 v0, v4, 0x7d

    .line 55
    .local v0, "alpha":I
    const v4, 0xff612a

    shl-int/lit8 v5, v0, 0x18

    or-int v1, v4, v5

    .line 56
    .local v1, "color":I
    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mEndRadius:F

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mStartRadius:F

    sub-float/2addr v4, v5

    int-to-float v5, p1

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v3, v4, v5

    .line 57
    .local v3, "strokeWidth":F
    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mStartRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    add-float v2, v4, v5

    .line 59
    .local v2, "radius":F
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 45
    const/high16 v0, 0x41980000    # 19.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mStartRadius:F

    .line 46
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mEndRadius:F

    .line 47
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mEndRadius:F

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mMaxRadius:F

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mAnimStart:J

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mFeedbackPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mFeedbackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    return-void
.end method
