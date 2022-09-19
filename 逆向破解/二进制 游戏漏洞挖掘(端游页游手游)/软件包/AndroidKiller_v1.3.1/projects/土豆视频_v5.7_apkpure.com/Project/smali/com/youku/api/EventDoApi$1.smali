.class Lcom/youku/api/EventDoApi$1;
.super Landroid/os/Handler;
.source "EventDoApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/api/EventDoApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/api/EventDoApi;


# direct methods
.method constructor <init>(Lcom/youku/api/EventDoApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    .line 61
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x21

    if-ne v8, v9, :cond_2

    .line 64
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    .line 65
    iget-object v8, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v8}, Lcom/youku/api/EventDoApi;->access$000(Lcom/youku/api/EventDoApi;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    const-string/jumbo v9, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v8, v9, v13}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto :goto_0

    .line 66
    :cond_2
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x22

    if-ne v8, v9, :cond_4

    .line 67
    iget-object v9, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {v9, v8}, Lcom/youku/api/EventDoApi;->access$102(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 70
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v8}, Lcom/youku/api/EventDoApi;->access$100(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "jsonRes":Lorg/json/JSONObject;
    const-string/jumbo v8, "response"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 72
    .local v4, "jsonResponseContent":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 73
    const-string v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "resCode":Ljava/lang/String;
    const-string v8, "SUCCESS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const-string v8, "data"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 76
    .local v1, "jsonData":Lorg/json/JSONObject;
    const-string/jumbo v8, "token"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "token":Ljava/lang/String;
    const-string/jumbo v8, "secretKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "secretKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v8}, Lcom/youku/api/EventDoApi;->access$200(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->setTokenAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setToken(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setKey(Ljava/lang/String;)V

    .line 85
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    .end local v5    # "resCode":Ljava/lang/String;
    .end local v6    # "secretKey":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "rid"

    iget-object v9, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v9}, Lcom/youku/api/EventDoApi;->access$300(Lcom/youku/api/EventDoApi;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v8, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v8}, Lcom/youku/api/EventDoApi;->access$200(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v9}, Lcom/youku/api/EventDoApi;->access$400(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v9

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v10

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 89
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "jsonRes":Lorg/json/JSONObject;
    .end local v4    # "jsonResponseContent":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    sput-boolean v13, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 91
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    sput-boolean v13, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 97
    iget-object v9, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {v9, v8}, Lcom/youku/api/EventDoApi;->access$502(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 103
    iget-object v8, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    iget-object v9, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v9}, Lcom/youku/api/EventDoApi;->access$100(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/api/EventDoApi$1;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v10}, Lcom/youku/api/EventDoApi;->access$500(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/youku/api/EventDoApi;->access$600(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    goto/16 :goto_0
.end method
