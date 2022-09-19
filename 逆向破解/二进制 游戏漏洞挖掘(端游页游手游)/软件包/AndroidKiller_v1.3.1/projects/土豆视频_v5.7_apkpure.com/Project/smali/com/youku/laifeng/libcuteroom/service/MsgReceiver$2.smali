.class Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;
.super Ljava/lang/Object;
.source "MsgReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 397
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getSimpleVersionName()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "ver":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/pushsdk/control/PushManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "token":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .local v0, "args":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "ver"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string/jumbo v4, "token"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://push.m.youku.com/feedback/recv/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$200(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$300(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    const-class v4, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url = http://push.m.youku.com/feedback/recv/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->access$200(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  args = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
