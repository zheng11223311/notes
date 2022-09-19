.class Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "GameWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameWebViewChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/GameWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameWebViewActivity$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 366
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 374
    const-string v0, "GameWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===title====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewChromeClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/youku/gamecenter/GameWebViewActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 376
    return-void
.end method
