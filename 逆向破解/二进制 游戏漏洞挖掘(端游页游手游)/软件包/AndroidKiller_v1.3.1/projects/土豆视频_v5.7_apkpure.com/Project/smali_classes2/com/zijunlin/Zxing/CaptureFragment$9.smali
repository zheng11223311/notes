.class Lcom/zijunlin/Zxing/CaptureFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "CaptureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zijunlin/Zxing/CaptureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zijunlin/Zxing/CaptureFragment;


# direct methods
.method constructor <init>(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$9;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 613
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    .line 614
    .local v0, "hasNetwork":Z
    if-nez v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment$9;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v1}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/zijunlin/Zxing/CaptureFragment$9;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v1}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->requestAgainPreview()V

    goto :goto_0
.end method
