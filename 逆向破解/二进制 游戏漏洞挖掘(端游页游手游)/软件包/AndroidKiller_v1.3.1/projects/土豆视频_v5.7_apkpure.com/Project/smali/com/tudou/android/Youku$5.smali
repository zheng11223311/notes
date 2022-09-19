.class Lcom/tudou/android/Youku$5;
.super Landroid/os/Handler;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
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
    .line 775
    iput-object p1, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 777
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 791
    :goto_0
    return-void

    .line 779
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    .local v0, "start":J
    iget-object v2, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v2}, Lcom/tudou/android/Youku;->access$000(Lcom/tudou/android/Youku;)V

    .line 781
    iget-object v2, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v2}, Lcom/tudou/android/Youku;->access$100(Lcom/tudou/android/Youku;)V

    .line 782
    iget-object v2, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v2}, Lcom/tudou/android/Youku;->access$200(Lcom/tudou/android/Youku;)V

    .line 783
    iget-object v2, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v2}, Lcom/tudou/android/Youku;->access$300(Lcom/tudou/android/Youku;)V

    .line 784
    iget-object v2, p0, Lcom/tudou/android/Youku$5;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v2}, Lcom/tudou/android/Youku;->access$400(Lcom/tudou/android/Youku;)V

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Youku onCreate 000 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v0    # "start":J
    :sswitch_1
    invoke-static {}, Lcom/tudou/android/Youku;->getStatusBarHeight()V

    goto :goto_0

    .line 777
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
