.class public Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;
.super Landroid/widget/FrameLayout;
.source "VideoRecordUpdateView.java"


# instance fields
.field private mBtnBack:Landroid/view/View;

.field public mBtnRetry:Landroid/view/View;

.field private mErrorView:Landroid/view/View;

.field private mLoading:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f0c0bab

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mBtnBack:Landroid/view/View;

    .line 42
    const v0, 0x7f0c0bac

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mLoading:Landroid/view/View;

    .line 43
    const v0, 0x7f0c0bad

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mErrorView:Landroid/view/View;

    .line 44
    const v0, 0x7f0c0bae

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mBtnRetry:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mBtnBack:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    if-eqz p2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
