.class Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;
.super Ljava/lang/Object;
.source "MobiSageConfigureModule.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageConfigureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureActionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageConfigureModule;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageConfigureModule$1;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;)V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 0
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 409
    return-void
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 6
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 387
    iget-object v3, p1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v4, "ResponseBody"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "responseBody":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, "tempDic":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    const-string v4, "configure"

    invoke-static {v3, v4, v2}, Lcom/mobisage/android/MobiSageConfigureModule;->access$700(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 391
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3, v2}, Lcom/mobisage/android/MobiSageConfigureModule;->access$1102(Lcom/mobisage/android/MobiSageConfigureModule;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 392
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v3

    const-string v4, "bsa"

    invoke-virtual {v3, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 396
    new-instance v1, Lcom/mobisage/android/MobiSageAppTask;

    invoke-direct {v1}, Lcom/mobisage/android/MobiSageAppTask;-><init>()V

    .line 397
    .local v1, "task":Lcom/mobisage/android/MobiSageAppTask;
    const-wide/16 v4, 0xb4

    iput-wide v4, v1, Lcom/mobisage/android/MobiSageAppTask;->delayTime:J

    .line 398
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1    # "task":Lcom/mobisage/android/MobiSageAppTask;
    .end local v2    # "tempDic":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v3

    goto :goto_0
.end method
