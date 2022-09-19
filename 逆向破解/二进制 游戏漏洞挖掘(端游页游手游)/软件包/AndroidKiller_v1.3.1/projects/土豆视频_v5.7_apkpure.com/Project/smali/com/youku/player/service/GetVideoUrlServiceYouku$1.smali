.class Lcom/youku/player/service/GetVideoUrlServiceYouku$1;
.super Landroid/os/Handler;
.source "GetVideoUrlServiceYouku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/service/GetVideoUrlServiceYouku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/service/GetVideoUrlServiceYouku;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 148
    .local v0, "mException":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-virtual {v1, v0}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V

    .line 149
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25, \u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$000(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_0

    .line 153
    .end local v0    # "mException":Lcom/youku/player/goplay/GoplayException;
    :cond_0
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$100(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 154
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$200(Lcom/youku/player/service/GetVideoUrlServiceYouku;)V

    .line 155
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u6210\u529f"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$000(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$100(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$100(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$300(Lcom/youku/player/service/GetVideoUrlServiceYouku;Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u7f51\u7edc\u6b63\u7247\u4fe1\u606f\u5931\u8d25\uff0c\u64ad\u653e\u672c\u5730\u89c6\u9891\u4fe1\u606f "

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$000(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$100(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 167
    .restart local v0    # "mException":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-virtual {v1, v0}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V

    .line 168
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;->this$0:Lcom/youku/player/service/GetVideoUrlServiceYouku;

    invoke-static {v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->access$000(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
