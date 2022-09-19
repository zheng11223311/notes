.class Lcom/tudou/ui/activity/WebViewActivity$6;
.super Landroid/webkit/WebChromeClient;
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
    .line 284
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$6;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$6;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$700(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 294
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$6;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$700(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method
