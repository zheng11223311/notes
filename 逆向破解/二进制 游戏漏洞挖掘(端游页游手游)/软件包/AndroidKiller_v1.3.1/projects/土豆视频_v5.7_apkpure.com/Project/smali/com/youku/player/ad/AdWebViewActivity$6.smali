.class Lcom/youku/player/ad/AdWebViewActivity$6;
.super Ljava/lang/Object;
.source "AdWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$getCookie:Z

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/AdWebViewActivity;ZLandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    iput-boolean p2, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->val$getCookie:Z

    iput-object p3, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 244
    iget-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v1}, Lcom/youku/player/ad/AdWebViewActivity;->access$000(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 245
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 248
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    iget-boolean v1, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->val$getCookie:Z

    if-eqz v1, :cond_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity$6;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method
