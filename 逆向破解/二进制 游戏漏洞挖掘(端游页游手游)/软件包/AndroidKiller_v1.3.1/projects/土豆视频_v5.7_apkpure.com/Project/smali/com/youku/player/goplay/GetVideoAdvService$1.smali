.class Lcom/youku/player/goplay/GetVideoAdvService$1;
.super Landroid/os/Handler;
.source "GetVideoAdvService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/goplay/GetVideoAdvService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/goplay/GetVideoAdvService;


# direct methods
.method constructor <init>(Lcom/youku/player/goplay/GetVideoAdvService;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private parseVideoAdvInfo()V
    .locals 8

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoAdvInfoResult;->getResponseString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 130
    .local v6, "advInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u83b7\u5f97\u5e7f\u544a\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/goplay/VideoAdvInfoResult;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    iget-object v1, v1, Lcom/youku/player/goplay/GetVideoAdvService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    invoke-static {v2}, Lcom/youku/player/goplay/GetVideoAdvService;->access$000(Lcom/youku/player/goplay/GetVideoAdvService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    invoke-static {v4}, Lcom/youku/player/goplay/GetVideoAdvService;->access$100(Lcom/youku/player/goplay/GetVideoAdvService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    invoke-static {v5}, Lcom/youku/player/goplay/GetVideoAdvService;->access$200(Lcom/youku/player/goplay/GetVideoAdvService;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v5

    invoke-static/range {v1 .. v6}, Lcom/youku/player/Track;->trackValfLoad(Landroid/content/Context;JLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 133
    iget-object v1, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    invoke-static {v1}, Lcom/youku/player/goplay/GetVideoAdvService;->access$300(Lcom/youku/player/goplay/GetVideoAdvService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v6}, Lcom/youku/player/goplay/GetVideoAdvService$1;->removeNullRS(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    iget-object v1, v1, Lcom/youku/player/goplay/GetVideoAdvService;->getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v1, v6}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v6    # "advInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance v7, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v7}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 139
    .local v7, "ge":Lcom/youku/player/goplay/GoplayException;
    iget-object v1, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    iget-object v1, v1, Lcom/youku/player/goplay/GetVideoAdvService;->getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-interface {v1, v7}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_0
.end method

.method private removeNullRS(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 4
    .param p1, "advInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 148
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/youku/player/goplay/AdvInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 152
    .local v0, "info":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/youku/player/goplay/AdvInfo;->SDKID:I

    if-nez v2, :cond_0

    .line 154
    :cond_1
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "removeNullRS"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 159
    .end local v0    # "info":Lcom/youku/player/goplay/AdvInfo;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/youku/player/goplay/AdvInfo;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-direct {p0}, Lcom/youku/player/goplay/GetVideoAdvService$1;->parseVideoAdvInfo()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/goplay/GetVideoAdvService$1;->this$0:Lcom/youku/player/goplay/GetVideoAdvService;

    iget-object v0, v0, Lcom/youku/player/goplay/GetVideoAdvService;->getAdvCallBack:Lcom/youku/player/goplay/IGetAdvCallBack;

    new-instance v1, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v1}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
