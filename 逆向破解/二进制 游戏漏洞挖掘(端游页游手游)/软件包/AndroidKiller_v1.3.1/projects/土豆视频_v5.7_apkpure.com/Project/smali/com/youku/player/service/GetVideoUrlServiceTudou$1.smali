.class Lcom/youku/player/service/GetVideoUrlServiceTudou$1;
.super Landroid/os/Handler;
.source "GetVideoUrlServiceTudou.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/service/GetVideoUrlServiceTudou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;


# direct methods
.method constructor <init>(Lcom/youku/player/service/GetVideoUrlServiceTudou;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->access$000(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 139
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->access$100(Lcom/youku/player/service/GetVideoUrlServiceTudou;)V

    .line 140
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->access$200(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->access$000(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 141
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u6210\u529f"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 145
    .local v0, "mException":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-virtual {v1, v0}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V

    .line 146
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceTudou;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->access$200(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 147
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
