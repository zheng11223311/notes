.class Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->notifyVideoLowProfile()V
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

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-static {v0}, Lcom/youdo/html5/VideoEnabledWebView;->access$000(Lcom/youdo/html5/VideoEnabledWebView;)Lcom/youdo/html5/VideoEnabledWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;->this$1:Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/youdo/html5/VideoEnabledWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
