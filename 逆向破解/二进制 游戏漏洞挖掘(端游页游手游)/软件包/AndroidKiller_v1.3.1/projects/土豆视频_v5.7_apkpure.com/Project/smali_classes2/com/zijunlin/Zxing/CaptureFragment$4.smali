.class Lcom/zijunlin/Zxing/CaptureFragment$4;
.super Landroid/os/Handler;
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
    .line 225
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$4;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 229
    sget-boolean v0, Lcom/zijunlin/Zxing/CaptureFragment;->isDestory:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$4;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$4;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v0}, Lcom/youku/widget/CodeErrorDialog;->show()V

    .line 232
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 233
    return-void
.end method
