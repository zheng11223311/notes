.class Lcom/tudou/alipay/AlipayManager$1;
.super Landroid/os/Handler;
.source "AlipayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/AlipayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/AlipayManager;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/AlipayManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager$1;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$1;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$000(Lcom/tudou/alipay/AlipayManager;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 88
    :sswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$1;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$100(Lcom/tudou/alipay/AlipayManager;)V

    goto :goto_0

    .line 85
    :sswitch_2
    const v1, 0x7f0d001e

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
