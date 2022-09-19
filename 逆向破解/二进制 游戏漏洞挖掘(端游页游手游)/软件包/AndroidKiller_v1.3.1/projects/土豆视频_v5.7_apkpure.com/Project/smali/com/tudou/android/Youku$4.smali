.class Lcom/tudou/android/Youku$4;
.super Landroid/content/BroadcastReceiver;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/Youku;->startPushSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/Youku;


# direct methods
.method constructor <init>(Lcom/tudou/android/Youku;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/tudou/android/Youku$4;->this$0:Lcom/tudou/android/Youku;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 652
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {p1}, Lcom/tudou/push/PushCollectApiMarager;->checkCollectApiState(Landroid/content/Context;)V

    .line 655
    :cond_0
    return-void
.end method
