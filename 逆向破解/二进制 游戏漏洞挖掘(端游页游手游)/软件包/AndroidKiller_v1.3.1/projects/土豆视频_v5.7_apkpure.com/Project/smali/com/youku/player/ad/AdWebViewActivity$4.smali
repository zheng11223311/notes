.class Lcom/youku/player/ad/AdWebViewActivity$4;
.super Landroid/webkit/WebChromeClient;
.source "AdWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/AdWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$4;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$4;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 214
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$4;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    invoke-static {}, Lcom/youku/player/ad/AdWebViewActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressChanged 100"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$4;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0, p2}, Lcom/youku/player/ad/AdWebViewActivity;->access$500(Lcom/youku/player/ad/AdWebViewActivity;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/youku/player/ad/AdWebViewActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method
