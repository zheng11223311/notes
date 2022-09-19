.class public Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;
.super Landroid/view/View;
.source "BatteryView.java"


# static fields
.field public static final metrics:Landroid/util/DisplayMetrics;

.field private static final scale:F


# instance fields
.field private mDestRect:Landroid/graphics/Rect;

.field private mInnerCharging:Landroid/graphics/Bitmap;

.field private mInnerChargingState:Landroid/graphics/Bitmap;

.field private mInnerNormal:Landroid/graphics/Bitmap;

.field mInnerWidth:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStateRect:Landroid/graphics/Rect;

.field paint:Landroid/graphics/Paint;

.field states:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->metrics:Landroid/util/DisplayMetrics;

    .line 28
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->scale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->paint:Landroid/graphics/Paint;

    .line 31
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->states:I

    .line 33
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerWidth:I

    .line 38
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    .line 39
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    .line 41
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mStateRect:Landroid/graphics/Rect;

    .line 45
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0206cd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerChargingState:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0206cc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerCharging:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0206ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerNormal:Landroid/graphics/Bitmap;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mStateRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x41a80000    # 21.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->states:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerCharging:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerChargingState:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mStateRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mStateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerNormal:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setNumber(II)V
    .locals 6
    .param p1, "number"    # I
    .param p2, "states"    # I

    .prologue
    const/high16 v5, 0x41100000    # 9.0f

    const/4 v4, 0x0

    .line 72
    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->states:I

    .line 73
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    .line 74
    .local v0, "width":I
    :goto_0
    mul-int v1, v0, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerWidth:I

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerWidth:I

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mSrcRect:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mInnerWidth:I

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->mDestRect:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->invalidate()V

    .line 80
    return-void

    .line 73
    .end local v0    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method
