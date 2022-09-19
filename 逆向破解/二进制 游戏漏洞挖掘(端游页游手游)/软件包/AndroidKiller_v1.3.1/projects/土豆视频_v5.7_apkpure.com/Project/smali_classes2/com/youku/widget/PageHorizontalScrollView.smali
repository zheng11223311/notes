.class public Lcom/youku/widget/PageHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "PageHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/PageHorizontalScrollView$ScrollType;,
        Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field _bt_left:Landroid/widget/ImageView;

.field _bt_right:Landroid/widget/ImageView;

.field cover_left:Landroid/widget/ImageView;

.field cover_right:Landroid/widget/ImageView;

.field public currentPos:I

.field private currentX:I

.field private mHandler:Landroid/os/Handler;

.field public screenWidth:I

.field private scrollDealy:I

.field private scrollRunnable:Ljava/lang/Runnable;

.field private scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

.field private scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

.field public totalPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    .line 172
    const v0, -0x98967f

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentX:I

    .line 176
    sget-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 180
    const/16 v0, 0x32

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollDealy:I

    .line 184
    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/PageHorizontalScrollView$1;-><init>(Lcom/youku/widget/PageHorizontalScrollView;)V

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollRunnable:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    .line 172
    const v0, -0x98967f

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentX:I

    .line 176
    sget-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 180
    const/16 v0, 0x32

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollDealy:I

    .line 184
    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/PageHorizontalScrollView$1;-><init>(Lcom/youku/widget/PageHorizontalScrollView;)V

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollRunnable:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    .line 172
    const v0, -0x98967f

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentX:I

    .line 176
    sget-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 180
    const/16 v0, 0x32

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollDealy:I

    .line 184
    new-instance v0, Lcom/youku/widget/PageHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/PageHorizontalScrollView$1;-><init>(Lcom/youku/widget/PageHorizontalScrollView;)V

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollRunnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/PageHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;

    .prologue
    .line 13
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentX:I

    return v0
.end method

.method static synthetic access$002(Lcom/youku/widget/PageHorizontalScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentX:I

    return p1
.end method

.method static synthetic access$102(Lcom/youku/widget/PageHorizontalScrollView;Lcom/youku/widget/PageHorizontalScrollView$ScrollType;)Lcom/youku/widget/PageHorizontalScrollView$ScrollType;
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;
    .param p1, "x1"    # Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/widget/PageHorizontalScrollView;)Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/PageHorizontalScrollView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/PageHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PageHorizontalScrollView;

    .prologue
    .line 13
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollDealy:I

    return v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/youku/widget/PageHorizontalScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    .line 64
    invoke-virtual {p0}, Lcom/youku/widget/PageHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    .line 66
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    iget v3, p0, Lcom/youku/widget/PageHorizontalScrollView;->screenWidth:I

    if-gt v0, v3, :cond_4

    .line 68
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 128
    return-void

    .line 81
    :cond_4
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    if-nez v0, :cond_8

    .line 83
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :cond_8
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    if-lez v0, :cond_10

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    iget v4, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    iget v5, p0, Lcom/youku/widget/PageHorizontalScrollView;->screenWidth:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_11

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_9
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 105
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_b
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :cond_c
    iget v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    iget v1, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    iget v3, p0, Lcom/youku/widget/PageHorizontalScrollView;->screenWidth:I

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_3

    .line 113
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 117
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 96
    goto :goto_1

    :cond_11
    move v1, v2

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lcom/youku/widget/PageHorizontalScrollView;IIII)V

    .line 39
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 214
    :pswitch_0
    sget-object v0, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->TOUCH_SCROLL:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    iput-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollType:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 217
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollToCurrent(IILandroid/view/View;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "tabView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-ge p1, p2, :cond_0

    if-lez p2, :cond_0

    .line 148
    if-eqz p3, :cond_1

    .line 149
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/youku/widget/PageHorizontalScrollView;->screenWidth:I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 150
    .local v0, "scrollPos":I
    invoke-virtual {p0, v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->smoothScrollTo(II)V

    .line 155
    .end local v0    # "scrollPos":I
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local p1    # "index":I
    :cond_1
    if-gez p1, :cond_2

    move p1, v1

    .end local p1    # "index":I
    :cond_2
    iget v2, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    div-int/2addr v2, p2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCoverLeftImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "cover_left"    # Landroid/widget/ImageView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_left:Landroid/widget/ImageView;

    .line 140
    return-void
.end method

.method public setCoverRightImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "cover_right"    # Landroid/widget/ImageView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->cover_right:Landroid/widget/ImageView;

    .line 144
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method

.method public setLeftButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bt1"    # Landroid/widget/ImageView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_left:Landroid/widget/ImageView;

    .line 132
    return-void
.end method

.method public setRightButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bt2"    # Landroid/widget/ImageView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->_bt_right:Landroid/widget/ImageView;

    .line 136
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 1
    .param p1, "screenWidth"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->screenWidth:I

    .line 43
    invoke-virtual {p0}, Lcom/youku/widget/PageHorizontalScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->currentPos:I

    .line 44
    invoke-virtual {p0}, Lcom/youku/widget/PageHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/youku/widget/PageHorizontalScrollView;->totalPos:I

    .line 45
    return-void
.end method

.method public setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView;->scrollViewListener:Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    .line 27
    return-void
.end method
