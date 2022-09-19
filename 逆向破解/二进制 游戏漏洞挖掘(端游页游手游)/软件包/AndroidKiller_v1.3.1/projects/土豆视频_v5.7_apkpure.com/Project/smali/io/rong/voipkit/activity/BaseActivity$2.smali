.class Lio/rong/voipkit/activity/BaseActivity$2;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;

.field final synthetic val$objectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$2;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iput-object p2, p0, Lio/rong/voipkit/activity/BaseActivity$2;->val$objectName:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 294
    const-string/jumbo v1, "startVoIp"

    const-string v2, "---sendMessage--onFailure----"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lio/rong/voipkit/model/VOIPCallBackObject;

    invoke-direct {v0}, Lio/rong/voipkit/model/VOIPCallBackObject;-><init>()V

    .line 296
    .local v0, "voipCallBackObject":Lio/rong/voipkit/model/VOIPCallBackObject;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/voipkit/model/VOIPCallBackObject;->setSuccess(Z)V

    .line 297
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$2;->val$objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/voipkit/model/VOIPCallBackObject;->setObjectName(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p2}, Lio/rong/voipkit/model/VOIPCallBackObject;->setObject(Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 289
    const-string/jumbo v0, "startVoIp"

    const-string v1, "---sendMessage--onSuccess----"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/voipkit/activity/BaseActivity$2;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
