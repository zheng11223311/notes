.class public final Lcom/alibaba/sdk/android/hotpatch/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/initialization/InitializationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/initialization/InitializationHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/hotpatch/e;->a:Z

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/hotpatch/e;->a:Z

    return-void
.end method


# virtual methods
.method public final createRequestParameters()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->getInstalledPatchList()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestParameterKey()Ljava/lang/String;
    .locals 1

    const-string v0, "hotpatch"

    return-object v0
.end method

.method public final getRequestServiceType()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/hotpatch/e;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->isHotPatchQueryRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResponseValueKey()Ljava/lang/String;
    .locals 1

    const-string v0, "patch"

    return-object v0
.end method

.method public final handleResponseError(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->stopAlarm()V

    return-void
.end method

.method public final synthetic handleResponseValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "hotpatch"

    const-string v1, "No hotpatch response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/sdk/android/hotpatch/f;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/hotpatch/f;-><init>(Lcom/alibaba/sdk/android/hotpatch/e;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method
