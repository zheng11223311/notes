.class Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;
.super Landroid/webkit/WebViewClient;
.source "RongWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/RongWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RongWebviewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/RongWebviewActivity;


# direct methods
.method private constructor <init>(Lio/rong/imkit/tools/RongWebviewActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/tools/RongWebviewActivity;Lio/rong/imkit/tools/RongWebviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imkit/tools/RongWebviewActivity;
    .param p2, "x1"    # Lio/rong/imkit/tools/RongWebviewActivity$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;-><init>(Lio/rong/imkit/tools/RongWebviewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iget-object v1, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iget-object v1, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iput-object p2, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iget-object v1, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v1, p2}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    :goto_0
    return v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iput-object p2, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;->this$0:Lio/rong/imkit/tools/RongWebviewActivity;

    iget-object v1, v1, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v1, p2}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
