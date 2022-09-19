.class Lcom/tudou/alipay/PayManager$1;
.super Landroid/os/Handler;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/PayManager;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/PayManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$1;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$1;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$000(Lcom/tudou/alipay/PayManager;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 98
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tudou/alipay/PayManager$AlipayResult;

    .line 107
    .local v1, "mAlipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$1;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2, v1}, Lcom/tudou/alipay/PayManager;->access$200(Lcom/tudou/alipay/PayManager;Lcom/tudou/alipay/PayManager$AlipayResult;)V

    goto :goto_0

    .line 100
    .end local v1    # "mAlipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    :sswitch_1
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$1;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$100(Lcom/tudou/alipay/PayManager;)V

    goto :goto_0

    .line 103
    :sswitch_2
    const v2, 0x7f0d001e

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 110
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "errCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$1;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2, v0}, Lcom/tudou/alipay/PayManager;->access$300(Lcom/tudou/alipay/PayManager;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
