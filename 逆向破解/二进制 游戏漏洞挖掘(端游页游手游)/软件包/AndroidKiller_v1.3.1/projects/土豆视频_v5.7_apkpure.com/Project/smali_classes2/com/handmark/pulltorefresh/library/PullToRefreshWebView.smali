.class public Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultWebChromeClient:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 56
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 57
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 66
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 67
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 39
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 76
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 77
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 84
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    .local v0, "webView":Landroid/webkit/WebView;
    :goto_0
    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 90
    return-object v0

    .line 86
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "webView":Landroid/webkit/WebView;
    goto :goto_0
.end method

.method protected isReadyForPullDown()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullUp()Z
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    .line 101
    .local v0, "exactContentHeight":F
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
