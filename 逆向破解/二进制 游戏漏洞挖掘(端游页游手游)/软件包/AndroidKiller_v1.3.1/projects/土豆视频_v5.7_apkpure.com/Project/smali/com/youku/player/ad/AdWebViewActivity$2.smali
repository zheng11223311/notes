.class Lcom/youku/player/ad/AdWebViewActivity$2;
.super Ljava/lang/Object;
.source "AdWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 89
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$2;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$2;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$000(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$string;->player_tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$2;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$100(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$2;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$100(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 100
    :cond_1
    return-void
.end method
