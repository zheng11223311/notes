.class Lcom/tudou/webview/IntegratedWebView$1;
.super Ljava/lang/Object;
.source "IntegratedWebView.java"

# interfaces
.implements Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/webview/IntegratedWebView;->init(Lcom/tudou/ui/activity/BuildInBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/webview/IntegratedWebView;


# direct methods
.method constructor <init>(Lcom/tudou/webview/IntegratedWebView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$1;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goUrlAfterLogin(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$1;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$000(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->setUrl(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$1;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$000(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->refresh()V

    goto :goto_0
.end method
