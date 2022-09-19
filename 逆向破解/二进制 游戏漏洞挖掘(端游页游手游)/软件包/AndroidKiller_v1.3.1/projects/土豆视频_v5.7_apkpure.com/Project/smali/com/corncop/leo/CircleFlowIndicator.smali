.class public Lcom/corncop/leo/CircleFlowIndicator;
.super Landroid/view/View;
.source "CircleFlowIndicator.java"

# interfaces
.implements Lcom/corncop/leo/FlowIndicator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private activeRadius:F

.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private circleSeparation:F

.field private currentScroll:I

.field private fadeOutTime:I

.field private flowWidth:I

.field private mCentered:Z

.field private final mPaintActive:Landroid/graphics/Paint;

.field private final mPaintInactive:Landroid/graphics/Paint;

.field private radius:F

.field private timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

.field private viewFlow:Lcom/corncop/leo/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    .line 62
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    .line 63
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->activeRadius:F

    .line 64
    iput v2, p0, Lcom/corncop/leo/CircleFlowIndicator;->fadeOutTime:I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 68
    iput v2, p0, Lcom/corncop/leo/CircleFlowIndicator;->currentScroll:I

    .line 69
    iput v2, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    .line 71
    iput-object p0, p0, Lcom/corncop/leo/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    iput-boolean v2, p0, Lcom/corncop/leo/CircleFlowIndicator;->mCentered:Z

    .line 82
    invoke-direct {p0, v4, v4, v3, v2}, Lcom/corncop/leo/CircleFlowIndicator;->initColors(IIII)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/high16 v7, 0x40800000    # 4.0f

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    .line 62
    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    .line 63
    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->activeRadius:F

    .line 64
    const/4 v7, 0x0

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->fadeOutTime:I

    .line 65
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 66
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 68
    const/4 v7, 0x0

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->currentScroll:I

    .line 69
    const/4 v7, 0x0

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    .line 71
    iput-object p0, p0, Lcom/corncop/leo/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->mCentered:Z

    .line 94
    sget-object v7, Lcom/toolsbox/athena/R$styleable;->CircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 101
    .local v3, "activeType":I
    const/4 v2, -0x1

    .line 104
    .local v2, "activeDefaultColor":I
    const/4 v7, 0x0

    .line 105
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 109
    .local v1, "activeColor":I
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 112
    .local v6, "inactiveType":I
    const v5, 0x44ffffff    # 2047.9999f

    .line 114
    .local v5, "inactiveDefaultColor":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 119
    .local v4, "inactiveColor":I
    const/4 v7, 0x2

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    .line 121
    const/4 v7, 0x7

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    .line 122
    const/16 v7, 0x8

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->activeRadius:F

    .line 124
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->fadeOutTime:I

    .line 126
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->mCentered:Z

    .line 128
    invoke-direct {p0, v1, v4, v3, v6}, Lcom/corncop/leo/CircleFlowIndicator;->initColors(IIII)V

    .line 129
    return-void
.end method

.method static synthetic access$200(Lcom/corncop/leo/CircleFlowIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/CircleFlowIndicator;

    .prologue
    .line 56
    iget v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->fadeOutTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/corncop/leo/CircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/corncop/leo/CircleFlowIndicator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/corncop/leo/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/corncop/leo/CircleFlowIndicator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/corncop/leo/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 2
    .param p1, "activeColor"    # I
    .param p2, "inactiveColor"    # I
    .param p3, "activeType"    # I
    .param p4, "inactiveType"    # I

    .prologue
    .line 134
    packed-switch p4, :pswitch_data_0

    .line 139
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    packed-switch p3, :pswitch_data_1

    .line 149
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 288
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 291
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 292
    move v0, v2

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 299
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 300
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 8
    .param p1, "measureSpec"    # I

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 254
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 257
    .local v3, "specSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_1

    .line 258
    move v1, v3

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    const/4 v0, 0x3

    .line 263
    .local v0, "count":I
    iget-object v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    if-eqz v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v5}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    .line 266
    :cond_2
    iget v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v7

    sub-float v4, v5, v6

    .line 267
    .local v4, "temp":F
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 271
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_0

    .line 272
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    invoke-static {v0}, Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;->access$000(Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    :cond_0
    new-instance v0, Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;-><init>(Lcom/corncop/leo/CircleFlowIndicator;Lcom/corncop/leo/CircleFlowIndicator$1;)V

    iput-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    .line 338
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->timer:Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lcom/corncop/leo/CircleFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 393
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/corncop/leo/CircleFlowIndicator;->setVisibility(I)V

    .line 394
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 398
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 402
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    const/4 v1, 0x3

    .line 163
    .local v1, "count":I
    iget-object v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v5}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "centeringOffset":F
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    .line 173
    .local v4, "leftPadding":I
    const/4 v3, 0x0

    .local v3, "iLoop":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 174
    int-to-float v5, v4

    iget v6, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 176
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    iget-object v8, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, 0x0

    .line 179
    .local v2, "cx":F
    iget v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    if-eqz v5, :cond_2

    .line 181
    iget v5, p0, Lcom/corncop/leo/CircleFlowIndicator;->currentScroll:I

    int-to-float v5, v5

    iget v6, p0, Lcom/corncop/leo/CircleFlowIndicator;->circleSeparation:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 184
    :cond_2
    int-to-float v5, v4

    iget v6, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/corncop/leo/CircleFlowIndicator;->radius:F

    iget v8, p0, Lcom/corncop/leo/CircleFlowIndicator;->activeRadius:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/corncop/leo/CircleFlowIndicator;->measureWidth(I)I

    move-result v0

    .line 241
    invoke-direct {p0, p2}, Lcom/corncop/leo/CircleFlowIndicator;->measureHeight(I)I

    move-result v1

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/corncop/leo/CircleFlowIndicator;->setMeasuredDimension(II)V

    .line 242
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/corncop/leo/CircleFlowIndicator;->setVisibility(I)V

    .line 223
    invoke-direct {p0}, Lcom/corncop/leo/CircleFlowIndicator;->resetTimer()V

    .line 224
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    .line 225
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    rem-int v0, p1, v0

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->currentScroll:I

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->invalidate()V

    .line 231
    return-void

    .line 228
    :cond_0
    iput p1, p0, Lcom/corncop/leo/CircleFlowIndicator;->currentScroll:I

    goto :goto_0
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 197
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->invalidate()V

    .line 315
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->invalidate()V

    .line 326
    return-void
.end method

.method public setViewFlow(Lcom/corncop/leo/ViewFlow;)V
    .locals 1
    .param p1, "view"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/corncop/leo/CircleFlowIndicator;->resetTimer()V

    .line 209
    iput-object p1, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    .line 210
    iget-object v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->viewFlow:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/corncop/leo/CircleFlowIndicator;->flowWidth:I

    .line 211
    invoke-virtual {p0}, Lcom/corncop/leo/CircleFlowIndicator;->invalidate()V

    .line 212
    return-void
.end method
