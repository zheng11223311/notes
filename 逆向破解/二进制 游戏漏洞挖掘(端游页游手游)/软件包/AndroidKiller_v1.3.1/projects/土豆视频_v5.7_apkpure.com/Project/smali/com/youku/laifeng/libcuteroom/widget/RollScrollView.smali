.class public Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;
.super Landroid/widget/ScrollView;
.source "RollScrollView.java"


# instance fields
.field private inner:Landroid/view/View;

.field private isCount:Z

.field private normal:Landroid/graphics/Rect;

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    .line 34
    return-void
.end method


# virtual methods
.method public animation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 115
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 116
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 120
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "jj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u56de\u5f52\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 125
    return-void
.end method

.method public commOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 62
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isNeedAnimation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->animation()V

    .line 69
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    goto :goto_0

    .line 78
    :pswitch_2
    iget v3, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->y:F

    .line 79
    .local v3, "preY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 80
    .local v2, "nowY":F
    sub-float v4, v3, v2

    float-to-int v1, v4

    .line 81
    .local v1, "deltaY":I
    iget-boolean v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    if-nez v4, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 85
    :cond_1
    iput v2, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->y:F

    .line 87
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isNeedMove()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    .line 92
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 91
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    :cond_2
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "jj"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u77e9\u5f62\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    .line 95
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    .line 98
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    sub-int/2addr v8, v9

    .line 97
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 100
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->isCount:Z

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isNeedAnimation()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMove()Z
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 141
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->getScrollY()I

    move-result v1

    .line 142
    .local v1, "scrollY":I
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "jj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrolly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_2

    .line 145
    :cond_1
    const/4 v2, 0x1

    .line 147
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    .line 41
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->inner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/RollScrollView;->commOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
