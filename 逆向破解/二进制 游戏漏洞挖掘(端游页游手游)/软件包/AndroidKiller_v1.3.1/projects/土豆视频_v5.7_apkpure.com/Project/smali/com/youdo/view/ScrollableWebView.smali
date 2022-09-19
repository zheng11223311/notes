.class public Lcom/youdo/view/ScrollableWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollChanged()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    :cond_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/youdo/view/ScrollableWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "MSG"

    const-string v1, "Send_2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/youdo/view/ScrollableWebView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/youdo/view/ScrollableWebView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/ScrollableWebView;->handler:Landroid/os/Handler;

    return-void
.end method
