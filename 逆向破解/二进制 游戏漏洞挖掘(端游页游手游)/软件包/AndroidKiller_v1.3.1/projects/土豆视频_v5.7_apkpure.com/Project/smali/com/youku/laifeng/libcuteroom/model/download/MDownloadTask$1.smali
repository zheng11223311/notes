.class Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;
.super Landroid/os/Handler;
.source "MDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 38
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 64
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onError(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;->onError(Ljava/lang/String;I)V

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onStart(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;->onStart(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v2

    .line 45
    .local v0, "a":F
    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-float v1, v2

    .line 46
    .local v1, "b":F
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    div-float v4, v0, v1

    invoke-interface {v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onProgress(Ljava/lang/String;F)V

    .line 47
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    div-float v4, v0, v1

    invoke-interface {v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;->onProgress(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 50
    .end local v0    # "a":F
    .end local v1    # "b":F
    :pswitch_2
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onStop(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;->onStop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :pswitch_3
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onCompletion(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$000(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;->onCompletion(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    goto/16 :goto_0

    .line 58
    :pswitch_4
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onWait(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :pswitch_5
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$200(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->access$100(Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;)Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;->onPause(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
