.class public Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
.super Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;
.source "BaseSafeHandler.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseSafeHandler;->handleMessage(Landroid/os/Message;)V

    .line 25
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->mContext:Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    if-eqz v1, :cond_0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->mContext:Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;

    invoke-virtual {v1, p1}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->mWithBaseHandler:Z

    if-eqz v1, :cond_1

    .line 33
    iget v1, p1, Landroid/os/Message;->what:I

    .line 38
    :cond_1
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
