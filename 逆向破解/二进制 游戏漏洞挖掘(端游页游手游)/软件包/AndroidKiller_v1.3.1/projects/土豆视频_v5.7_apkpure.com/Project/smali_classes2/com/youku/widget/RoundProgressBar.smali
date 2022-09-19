.class public Lcom/youku/widget/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, -0xff0100

    const/4 v3, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 87
    sget-object v1, Lcom/tudou/android/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7f09010f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->roundColor:I

    .line 93
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->roundProgressColor:I

    .line 95
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->textColor:I

    .line 97
    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->textSize:F

    .line 99
    const/4 v1, 0x2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    .line 101
    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    .line 102
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/widget/RoundProgressBar;->textIsDisplayable:Z

    .line 104
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/RoundProgressBar;->style:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v11, 0x40000000    # 2.0f

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0}, Lcom/youku/widget/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 117
    .local v6, "centre":I
    int-to-float v0, v6

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    div-float/2addr v3, v11

    sub-float/2addr v0, v3

    float-to-int v8, v0

    .line 118
    .local v8, "radius":I
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    int-to-float v0, v6

    int-to-float v3, v6

    int-to-float v5, v8

    iget-object v10, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v8, v8, -0x6

    .line 125
    const-string v0, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->textColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->textSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->progress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v7, v0

    .line 135
    .local v7, "percent":I
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 137
    .local v9, "textWidth":F
    iget-boolean v0, p0, Lcom/youku/widget/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->style:I

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v6

    div-float v5, v9, v11

    sub-float/2addr v3, v5

    int-to-float v5, v6

    iget v10, p0, Lcom/youku/widget/RoundProgressBar;->textSize:F

    div-float/2addr v10, v11

    add-float/2addr v5, v10

    iget-object v10, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v8

    int-to-float v0, v0

    sub-int v3, v6, v8

    int-to-float v3, v3

    add-int v5, v6, v8

    int-to-float v5, v5

    add-int v10, v6, v8

    int-to-float v10, v10

    invoke-direct {v1, v0, v3, v5, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 152
    .local v1, "oval":Landroid/graphics/RectF;
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->progress:I

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/youku/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->roundColor:I

    .line 218
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->roundProgressColor:I

    .line 226
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 178
    monitor-enter p0

    if-gez p1, :cond_0

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 199
    monitor-enter p0

    if-gez p1, :cond_0

    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 203
    iget p1, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    .line 205
    :cond_1
    iget v0, p0, Lcom/youku/widget/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 206
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->progress:I

    .line 207
    invoke-virtual {p0}, Lcom/youku/widget/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 249
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->roundWidth:F

    .line 250
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->textColor:I

    .line 234
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 241
    iput p1, p0, Lcom/youku/widget/RoundProgressBar;->textSize:F

    .line 242
    return-void
.end method
