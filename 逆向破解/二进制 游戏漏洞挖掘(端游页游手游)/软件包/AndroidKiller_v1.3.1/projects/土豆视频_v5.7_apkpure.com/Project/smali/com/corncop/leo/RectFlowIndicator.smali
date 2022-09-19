.class public Lcom/corncop/leo/RectFlowIndicator;
.super Landroid/view/View;
.source "RectFlowIndicator.java"

# interfaces
.implements Lcom/corncop/leo/FlowIndicator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/leo/RectFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private activeRectheight:F

.field private activeRectwidth:F

.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private currentScroll:I

.field private fadeOutTime:I

.field private flowWidth:I

.field private mCentered:Z

.field private final mPaintActive:Landroid/graphics/Paint;

.field private final mPaintInactive:Landroid/graphics/Paint;

.field private rectheight:F

.field private rectwidth:F

.field private rectwidthSeparation:F

.field private timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

.field private viewFlow:Lcom/corncop/leo/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    .line 62
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->rectheight:F

    .line 63
    iget v0, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidthSeparation:F

    .line 64
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectwidth:F

    .line 65
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectheight:F

    .line 67
    iput v2, p0, Lcom/corncop/leo/RectFlowIndicator;->fadeOutTime:I

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 71
    iput v2, p0, Lcom/corncop/leo/RectFlowIndicator;->currentScroll:I

    .line 72
    iput v2, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    .line 74
    iput-object p0, p0, Lcom/corncop/leo/RectFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 76
    iput-boolean v2, p0, Lcom/corncop/leo/RectFlowIndicator;->mCentered:Z

    .line 85
    invoke-direct {p0, v4, v4, v3, v2}, Lcom/corncop/leo/RectFlowIndicator;->initColors(IIII)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/high16 v7, 0x42400000    # 48.0f

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    .line 62
    const/high16 v7, 0x41000000    # 8.0f

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->rectheight:F

    .line 63
    iget v7, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidthSeparation:F

    .line 64
    const/high16 v7, 0x42480000    # 50.0f

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectwidth:F

    .line 65
    const/high16 v7, 0x41200000    # 10.0f

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectheight:F

    .line 67
    iput v9, p0, Lcom/corncop/leo/RectFlowIndicator;->fadeOutTime:I

    .line 68
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 69
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 71
    iput v9, p0, Lcom/corncop/leo/RectFlowIndicator;->currentScroll:I

    .line 72
    iput v9, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    .line 74
    iput-object p0, p0, Lcom/corncop/leo/RectFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 76
    iput-boolean v9, p0, Lcom/corncop/leo/RectFlowIndicator;->mCentered:Z

    .line 97
    sget-object v7, Lcom/toolsbox/athena/R$styleable;->CircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 104
    .local v3, "activeType":I
    const/4 v2, -0x1

    .line 108
    .local v2, "activeDefaultColor":I
    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 112
    .local v1, "activeColor":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 115
    .local v6, "inactiveType":I
    const v5, -0x3f3f40

    .line 117
    .local v5, "inactiveDefaultColor":I
    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 127
    .local v4, "inactiveColor":I
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/corncop/leo/RectFlowIndicator;->fadeOutTime:I

    .line 129
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/corncop/leo/RectFlowIndicator;->mCentered:Z

    .line 131
    invoke-direct {p0, v1, v4, v3, v6}, Lcom/corncop/leo/RectFlowIndicator;->initColors(IIII)V

    .line 132
    return-void
.end method

.method static synthetic access$200(Lcom/corncop/leo/RectFlowIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/RectFlowIndicator;

    .prologue
    .line 56
    iget v0, p0, Lcom/corncop/leo/RectFlowIndicator;->fadeOutTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/corncop/leo/RectFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/RectFlowIndicator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/corncop/leo/RectFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/corncop/leo/RectFlowIndicator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/corncop/leo/RectFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 2
    .param p1, "activeColor"    # I
    .param p2, "inactiveColor"    # I
    .param p3, "activeType"    # I
    .param p4, "inactiveType"    # I

    .prologue
    .line 137
    packed-switch p4, :pswitch_data_0

    .line 142
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    packed-switch p3, :pswitch_data_1

    .line 152
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "result":I
    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectheight:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 287
    return v0
.end method

.method private measureWidth(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 268
    const/4 v0, 0x3

    .line 269
    .local v0, "count":I
    iget-object v2, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v2}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    iget v5, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidthSeparation:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 274
    .local v1, "result":I
    return v1
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/corncop/leo/RectFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    invoke-static {v0}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->access$000(Lcom/corncop/leo/RectFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    :cond_0
    new-instance v0, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;-><init>(Lcom/corncop/leo/RectFlowIndicator;Lcom/corncop/leo/RectFlowIndicator$1;)V

    iput-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    .line 333
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->timer:Lcom/corncop/leo/RectFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lcom/corncop/leo/RectFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 388
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/corncop/leo/RectFlowIndicator;->setVisibility(I)V

    .line 389
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 397
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    const/4 v7, 0x3

    .line 166
    .local v7, "count":I
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v7

    .line 170
    :cond_0
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 202
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v6, 0x0

    .line 176
    .local v6, "centeringOffset":F
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingLeft()I

    move-result v11

    .line 178
    .local v11, "leftPadding":I
    const/4 v9, 0x0

    .local v9, "iLoop":I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 179
    int-to-float v0, v11

    int-to-float v1, v9

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v9

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidthSeparation:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v10, v0

    .line 180
    .local v10, "left":I
    int-to-float v0, v11

    int-to-float v1, v9

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v9

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidthSeparation:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    add-float/2addr v0, v1

    float-to-int v12, v0

    .line 181
    .local v12, "right":I
    int-to-float v1, v10

    .line 182
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v12

    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/corncop/leo/RectFlowIndicator;->rectheight:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    move-object v0, p1

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 178
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 188
    .end local v10    # "left":I
    .end local v12    # "right":I
    :cond_2
    const/4 v8, 0x0

    .line 189
    .local v8, "cx":F
    iget v0, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    if-eqz v0, :cond_3

    .line 191
    iget v0, p0, Lcom/corncop/leo/RectFlowIndicator;->currentScroll:I

    int-to-float v0, v0

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    iget v2, p0, Lcom/corncop/leo/RectFlowIndicator;->rectwidth:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 194
    :cond_3
    int-to-float v0, v11

    add-float/2addr v0, v8

    float-to-int v10, v0

    .line 195
    .restart local v10    # "left":I
    int-to-float v0, v10

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectwidth:F

    add-float/2addr v0, v1

    float-to-int v12, v0

    .line 196
    .restart local v12    # "right":I
    int-to-float v1, v10

    .line 197
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v12

    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/corncop/leo/RectFlowIndicator;->activeRectheight:F

    add-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    move-object v0, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/corncop/leo/RectFlowIndicator;->measureWidth(I)I

    move-result v0

    .line 257
    invoke-direct {p0, p2}, Lcom/corncop/leo/RectFlowIndicator;->measureHeight(I)I

    move-result v1

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/corncop/leo/RectFlowIndicator;->setMeasuredDimension(II)V

    .line 258
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/corncop/leo/RectFlowIndicator;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/corncop/leo/RectFlowIndicator;->resetTimer()V

    .line 240
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    .line 241
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    rem-int v0, p1, v0

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->currentScroll:I

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->invalidate()V

    .line 247
    return-void

    .line 244
    :cond_0
    iput p1, p0, Lcom/corncop/leo/RectFlowIndicator;->currentScroll:I

    goto :goto_0
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 213
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->invalidate()V

    .line 299
    return-void
.end method

.method public setInactiveFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->invalidate()V

    .line 310
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->invalidate()V

    .line 321
    return-void
.end method

.method public setViewFlow(Lcom/corncop/leo/ViewFlow;)V
    .locals 1
    .param p1, "view"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/corncop/leo/RectFlowIndicator;->resetTimer()V

    .line 225
    iput-object p1, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    .line 226
    iget-object v0, p0, Lcom/corncop/leo/RectFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/RectFlowIndicator;->flowWidth:I

    .line 227
    invoke-virtual {p0}, Lcom/corncop/leo/RectFlowIndicator;->invalidate()V

    .line 228
    return-void
.end method
