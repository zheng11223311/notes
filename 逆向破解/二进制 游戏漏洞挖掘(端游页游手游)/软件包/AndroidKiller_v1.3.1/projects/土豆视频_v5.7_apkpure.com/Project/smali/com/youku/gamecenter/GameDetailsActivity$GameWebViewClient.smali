.class Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GameDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/GameDetailsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameDetailsActivity$1;

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$400(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$500(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 683
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$400(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$600(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$500(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$700(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 700
    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 702
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 703
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 705
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    :cond_1
    :goto_0
    return v3

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    const-string/jumbo v2, "selected_card"

    invoke-static {v0, p2, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$900(Lcom/youku/gamecenter/GameDetailsActivity;)V

    goto :goto_0
.end method
