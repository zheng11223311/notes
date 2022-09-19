.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;
.super Landroid/content/BroadcastReceiver;
.source "DetailSerisCachePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    new-instance v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;)V

    .line 325
    .local v0, "h":Landroid/os/Handler;
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    return-void
.end method
