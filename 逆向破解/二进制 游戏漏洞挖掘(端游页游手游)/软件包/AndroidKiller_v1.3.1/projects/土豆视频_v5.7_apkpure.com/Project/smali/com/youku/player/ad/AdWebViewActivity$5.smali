.class Lcom/youku/player/ad/AdWebViewActivity$5;
.super Ljava/lang/Object;
.source "AdWebViewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 230
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$5;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$5;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$100(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$5;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$100(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity$5;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v1}, Lcom/youku/player/ad/AdWebViewActivity;->access$600(Lcom/youku/player/ad/AdWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
