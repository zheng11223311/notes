.class public abstract Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;
.super Landroid/app/Activity;
.source "AbsBaseActvity.java"


# instance fields
.field protected mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "mFactory":Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;, "Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory<Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;>;"
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    if-nez v3, :cond_1

    .line 31
    if-nez v1, :cond_0

    .line 32
    :try_start_0
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;

    invoke-direct {v2}, Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;-><init>()V

    .end local v1    # "mFactory":Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;, "Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory<Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;>;"
    .local v2, "mFactory":Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;, "Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory<Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;>;"
    move-object v1, v2

    .line 34
    .end local v2    # "mFactory":Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;, "Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory<Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;>;"
    .restart local v1    # "mFactory":Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;, "Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory<Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;>;"
    :cond_0
    sget-object v3, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/youku/laifeng/libcuteroom/model/factory/SimpleFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    .line 35
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    invoke-virtual {v3, p0}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->setHandler(Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract handleMessage(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
