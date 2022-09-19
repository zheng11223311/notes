.class Lcom/tudou/webview/IntegratedWebView$5;
.super Ljava/util/TimerTask;
.source "IntegratedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/webview/IntegratedWebView;->startTimer()V
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
    .line 317
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$5;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$5;->this$0:Lcom/tudou/webview/IntegratedWebView;

    iget-object v0, v0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 324
    const-string v0, "testTimeout"

    const-string v1, "timeout..........."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$5;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$400(Lcom/tudou/webview/IntegratedWebView;)V

    .line 326
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$5;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$500(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->sendEmptyMessage(I)Z

    .line 329
    :cond_0
    return-void
.end method
