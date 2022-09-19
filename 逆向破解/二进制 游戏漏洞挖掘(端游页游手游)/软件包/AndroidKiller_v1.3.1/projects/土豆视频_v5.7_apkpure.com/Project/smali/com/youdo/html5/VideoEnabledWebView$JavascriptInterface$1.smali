.class Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->notifyVideoEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-static {v0}, Lcom/youdo/html5/VideoEnabledWebView;->access$000(Lcom/youdo/html5/VideoEnabledWebView;)Lcom/youdo/html5/VideoEnabledWebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-static {v0}, Lcom/youdo/html5/VideoEnabledWebView;->access$000(Lcom/youdo/html5/VideoEnabledWebView;)Lcom/youdo/html5/VideoEnabledWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/html5/VideoEnabledWebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method
