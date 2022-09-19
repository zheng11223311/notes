.class Lcom/mobisage/android/MobiSageAdView$1;
.super Landroid/os/Handler;
.source "MobiSageAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdView;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 194
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 195
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v3, v2, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    const-string v2, "appurl"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mobisage/android/MobiSageHtmlUtility;->getApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "app":Ljava/lang/String;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v3, v2, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "callback"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "(\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobisage/android/MobiSageAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView$1;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v3, v2, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "callback"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "(\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobisage/android/MobiSageAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 206
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
