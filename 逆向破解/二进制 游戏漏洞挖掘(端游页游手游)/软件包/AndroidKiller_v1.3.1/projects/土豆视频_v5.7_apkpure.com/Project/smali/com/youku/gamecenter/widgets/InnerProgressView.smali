.class public Lcom/youku/gamecenter/widgets/InnerProgressView;
.super Landroid/widget/LinearLayout;
.source "InnerProgressView.java"


# instance fields
.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 20
    sget v0, Lcom/youku/gamecenter/R$id;->download_progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/InnerProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/InnerProgressView;->mProgressView:Landroid/view/View;

    .line 21
    return-void
.end method

.method public setProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/InnerProgressView;->getWidth()I

    move-result v3

    .line 25
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/InnerProgressView;->getHeight()I

    move-result v1

    .line 26
    .local v1, "height":I
    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 27
    .local v0, "curProgress":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/youku/gamecenter/widgets/InnerProgressView;->mProgressView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method

.method public setProgressDelay(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/InnerProgressView;->mProgressView:Landroid/view/View;

    new-instance v1, Lcom/youku/gamecenter/widgets/InnerProgressView$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/widgets/InnerProgressView$1;-><init>(Lcom/youku/gamecenter/widgets/InnerProgressView;I)V

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method
