.class public Lio/rong/imkit/widget/RCCircleFlowIndicator;
.super Landroid/view/View;
.source "RCCircleFlowIndicator.java"

# interfaces
.implements Lio/rong/imkit/widget/FlowIndicator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/RCCircleFlowIndicator$1;,
        Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private currentPosition:I

.field private currentScroll:I

.field private fadeOutTime:I

.field private flowWidth:I

.field private mCentered:Z

.field private final mPaintActive:Landroid/graphics/Paint;

.field private final mPaintInactive:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRadiusActive:F

.field private mRadiusInactive:F

.field private mSnap:Z

.field private spacing:F

.field private timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

.field private viewFlow:Lio/rong/imkit/widget/RCViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    .line 71
    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    .line 72
    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    .line 73
    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    .line 74
    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->fadeOutTime:I

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 78
    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentScroll:I

    .line 79
    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentPosition:I

    .line 80
    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    .line 82
    iput-object p0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 84
    iput-boolean v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mCentered:Z

    .line 85
    iput-boolean v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    .line 94
    invoke-direct {p0, v3, v3, v2, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->initColors(IIII)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v10, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    .line 71
    iput v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    .line 72
    iput v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    .line 73
    iput v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    .line 74
    iput v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->fadeOutTime:I

    .line 75
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 76
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 78
    iput v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentScroll:I

    .line 79
    iput v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentPosition:I

    .line 80
    iput v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    .line 82
    iput-object p0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 84
    iput-boolean v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mCentered:Z

    .line 85
    iput-boolean v10, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    .line 106
    sget-object v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCActiveType:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 115
    .local v3, "activeType":I
    const/4 v2, -0x1

    .line 118
    .local v2, "activeDefaultColor":I
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCActiveColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 125
    .local v1, "activeColor":I
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCInactiveType:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 130
    .local v6, "inactiveType":I
    const v5, 0x44ffffff    # 2047.9999f

    .line 132
    .local v5, "inactiveDefaultColor":I
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCInactiveColor:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 138
    .local v4, "inactiveColor":I
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCRadius:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    .line 140
    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    .line 141
    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    .line 144
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCSpacing:I

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    .line 147
    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    .line 150
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCFadeOut:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->fadeOutTime:I

    .line 152
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCCentered:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mCentered:Z

    .line 154
    sget v7, Lio/rong/imkit/R$styleable;->RCCircleFlowIndicator_RCSnap:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    .line 157
    invoke-direct {p0, v1, v4, v3, v6}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->initColors(IIII)V

    .line 158
    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/RCCircleFlowIndicator;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCCircleFlowIndicator;

    .prologue
    .line 65
    iget v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->fadeOutTime:I

    return v0
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/RCCircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/RCCircleFlowIndicator;

    .prologue
    .line 65
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/imkit/widget/RCCircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/RCCircleFlowIndicator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    iput-object p1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 6
    .param p1, "activeColor"    # I
    .param p2, "inactiveColor"    # I
    .param p3, "activeType"    # I
    .param p4, "inactiveType"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 163
    packed-switch p4, :pswitch_data_0

    .line 168
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 170
    .local v0, "strokeWidth":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v4, v1

    .line 174
    :cond_0
    iget v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    div-float v2, v0, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    .line 176
    .end local v0    # "strokeWidth":F
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    packed-switch p3, :pswitch_data_1

    .line 190
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    :goto_1
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    return-void

    .line 165
    :pswitch_0
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 183
    .restart local v0    # "strokeWidth":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v4, v1

    .line 187
    :cond_1
    iget v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    div-float v2, v0, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 335
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 338
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 339
    move v0, v2

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 346
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 347
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 302
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 305
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    .line 306
    move v1, v3

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    const/4 v0, 0x3

    .line 311
    .local v0, "count":I
    iget-object v4, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    if-eqz v4, :cond_2

    .line 312
    iget-object v4, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v4}, Lio/rong/imkit/widget/RCViewFlow;->getViewsCount()I

    move-result v0

    .line 315
    :cond_2
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 319
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    .line 320
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 380
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    invoke-static {v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->access$000(Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_0
    new-instance v0, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;-><init>(Lio/rong/imkit/widget/RCCircleFlowIndicator;Lio/rong/imkit/widget/RCCircleFlowIndicator$1;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    .line 383
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 386
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->timer:Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 438
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->setVisibility(I)V

    .line 439
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 447
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    const/4 v1, 0x3

    .line 204
    .local v1, "count":I
    iget-object v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v5}, Lio/rong/imkit/widget/RCViewFlow;->getViewsCount()I

    move-result v1

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, "centeringOffset":F
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    .line 214
    .local v4, "leftPadding":I
    const/4 v3, 0x0

    .local v3, "iLoop":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 215
    int-to-float v5, v4

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    add-float/2addr v6, v7

    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusInactive:F

    iget-object v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v2, 0x0

    .line 220
    .local v2, "cx":F
    iget-boolean v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    if-eqz v5, :cond_3

    .line 221
    iget v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentPosition:I

    int-to-float v5, v5

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    mul-float v2, v5, v6

    .line 229
    :cond_2
    :goto_1
    int-to-float v5, v4

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadius:F

    add-float/2addr v6, v7

    iget v7, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mRadiusActive:F

    iget-object v8, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    return-void

    .line 223
    :cond_3
    iget v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    if-eqz v5, :cond_2

    .line 225
    iget v5, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentScroll:I

    int-to-float v5, v5

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->spacing:F

    mul-float/2addr v5, v6

    iget v6, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    int-to-float v6, v6

    div-float v2, v5, v6

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->setMeasuredDimension(II)V

    .line 291
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 1
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 273
    iput p1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentScroll:I

    .line 274
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    .line 275
    iget-boolean v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->setVisibility(I)V

    .line 277
    invoke-direct {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->resetTimer()V

    .line 278
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->invalidate()V

    .line 280
    :cond_0
    return-void
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 242
    iput p2, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->currentPosition:I

    .line 243
    iget-boolean v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mSnap:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->setVisibility(I)V

    .line 245
    invoke-direct {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->resetTimer()V

    .line 246
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->invalidate()V

    .line 248
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->invalidate()V

    .line 361
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->invalidate()V

    .line 371
    return-void
.end method

.method public setViewFlow(Lio/rong/imkit/widget/RCViewFlow;)V
    .locals 1
    .param p1, "view"    # Lio/rong/imkit/widget/RCViewFlow;

    .prologue
    .line 259
    invoke-direct {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->resetTimer()V

    .line 260
    iput-object p1, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    .line 261
    iget-object v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->viewFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v0}, Lio/rong/imkit/widget/RCViewFlow;->getChildWidth()I

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/RCCircleFlowIndicator;->flowWidth:I

    .line 262
    invoke-virtual {p0}, Lio/rong/imkit/widget/RCCircleFlowIndicator;->invalidate()V

    .line 263
    return-void
.end method
