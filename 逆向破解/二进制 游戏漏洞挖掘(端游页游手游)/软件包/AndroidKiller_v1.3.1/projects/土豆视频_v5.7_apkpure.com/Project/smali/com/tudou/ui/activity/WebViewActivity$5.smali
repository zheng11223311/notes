.class Lcom/tudou/ui/activity/WebViewActivity$5;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WebViewActivity;->loadWebView(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WebViewActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$5;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "WebViewActivity"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$5;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$500(Lcom/tudou/ui/activity/WebViewActivity;)V

    .line 234
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$5;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$600(Lcom/tudou/ui/activity/WebViewActivity;)V

    .line 267
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 268
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 274
    const v0, 0x7f0d03d1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 275
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$5;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$500(Lcom/tudou/ui/activity/WebViewActivity;)V

    .line 276
    const-string v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError->code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->failingUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
