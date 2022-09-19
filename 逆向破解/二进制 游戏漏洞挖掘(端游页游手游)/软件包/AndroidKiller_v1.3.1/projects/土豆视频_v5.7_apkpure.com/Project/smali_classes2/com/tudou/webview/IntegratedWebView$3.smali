.class Lcom/tudou/webview/IntegratedWebView$3;
.super Landroid/webkit/WebChromeClient;
.source "IntegratedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/webview/IntegratedWebView;->setVideoPlayerClient(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/webview/IntegratedWebView;

.field final synthetic val$isScreenLandscape:Z


# direct methods
.method constructor <init>(Lcom/tudou/webview/IntegratedWebView;Z)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    iput-boolean p2, p0, Lcom/tudou/webview/IntegratedWebView$3;->val$isScreenLandscape:Z

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAGIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "dazhu_IntegratedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v1}, Lcom/tudou/webview/IntegratedWebView;->access$300(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v1}, Lcom/tudou/webview/IntegratedWebView;->access$300(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;->setReceiveImage(Ljava/lang/String;)V

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 214
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 188
    iget-boolean v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->val$isScreenLandscape:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$600(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/activity/BuildInBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$600(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/activity/BuildInBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->setRequestedOrientation(I)V

    .line 192
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$600(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/activity/BuildInBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BuildInBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$700(Lcom/tudou/webview/IntegratedWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 196
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$700(Lcom/tudou/webview/IntegratedWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$3;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$700(Lcom/tudou/webview/IntegratedWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
