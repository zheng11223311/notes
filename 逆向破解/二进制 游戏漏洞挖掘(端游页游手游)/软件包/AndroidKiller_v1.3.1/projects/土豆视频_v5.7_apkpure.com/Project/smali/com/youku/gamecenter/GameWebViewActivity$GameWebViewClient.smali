.class Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GameWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/GameWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameWebViewActivity;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameWebViewActivity$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;-><init>(Lcom/youku/gamecenter/GameWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 315
    const-string v0, "GameWebViewActivity"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 318
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 319
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 320
    const-string v0, "GameWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=onPageFinished===2222==v.hasFocus()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-static {v1, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$500(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$600(Lcom/youku/gamecenter/GameWebViewActivity;I)V

    .line 328
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v3, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v3}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/GameWebViewActivity;->access$700(Lcom/youku/gamecenter/GameWebViewActivity;Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$800(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;I)V

    .line 331
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_network_failed:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->showNetTips(Ljava/lang/String;)V

    .line 339
    const-string v0, "GameWebViewActivity"

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

    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 347
    if-eqz p1, :cond_0

    .line 348
    const-string v0, "GameWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======load url====hasFocus======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 351
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 352
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 354
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    :cond_1
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewClient;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$300(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 358
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
