.class Lcom/youku/player/service/GetHlsUrlServiceTudou$1;
.super Landroid/os/Handler;
.source "GetHlsUrlServiceTudou.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/service/GetHlsUrlServiceTudou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;


# direct methods
.method constructor <init>(Lcom/youku/player/service/GetHlsUrlServiceTudou;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v2}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 55
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->errorCode:I

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 58
    .local v0, "mException":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 59
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v1, v1, Lcom/youku/player/module/LiveInfo;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 60
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$100(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 61
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "mException":Lcom/youku/player/goplay/GoplayException;
    :cond_0
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$100(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v2}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$000(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 66
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u6210\u529f"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 70
    .restart local v0    # "mException":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-virtual {v1, v0}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V

    .line 71
    iget-object v1, p0, Lcom/youku/player/service/GetHlsUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetHlsUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetHlsUrlServiceTudou;->access$100(Lcom/youku/player/service/GetHlsUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 72
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
