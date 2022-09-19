.class public final Lcom/alibaba/sdk/android/security/impl/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/Exception;)Lcom/alibaba/sdk/android/ResultCode;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x271a

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    :goto_0
    const-string v1, "security"

    invoke-static {v1, v0, p1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/ResultCode;->create(Lcom/alibaba/sdk/android/message/Message;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    return-object v0

    :sswitch_0
    const/16 v0, 0x2c0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x2bd

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/alibaba/sdk/android/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_1
    const/16 v1, 0x2be

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x6a -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lcom/alibaba/sdk/android/app/AppContext;)Lcom/alibaba/sdk/android/ResultCode;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    invoke-interface {p0}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SECURITY_GUARD_INIT_EXCEPTION:Lcom/alibaba/sdk/android/ResultCode;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.alibaba.app.appkey"

    invoke-static {v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.app.appkey"

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/AlibabaSDK;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/sdk/android/security/SecRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/security/impl/g;->a(ILjava/lang/Exception;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/security/SecRuntimeException;->getErrorCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/security/impl/g;->a(ILjava/lang/Exception;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto :goto_0
.end method
