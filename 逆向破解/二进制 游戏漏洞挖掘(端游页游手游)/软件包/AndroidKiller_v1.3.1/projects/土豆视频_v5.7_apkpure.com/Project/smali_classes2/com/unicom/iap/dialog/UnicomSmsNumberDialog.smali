.class public Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;
.super Lcom/unicom/iap/dialog/UnicomBaseDialog;
.source "UnicomSmsNumberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final SMS_PHONENUM_FAIL:I

.field private final SMS_PHONENUM_OK:I

.field private final SMS_REJESTRE_FAIL:I

.field private final SMS_YZM_FAIL:I

.field private ZZBDS_ISMOBLIEPHONE:Ljava/lang/String;

.field private ZZBDS_ISYZM:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field mHandler:Landroid/os/Handler;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;

.field protected myProgressDialog:Landroid/app/ProgressDialog;

.field public unicom_btn_activation:Landroid/widget/TextView;

.field public unicom_btn_yzm:Landroid/widget/TextView;

.field public unicom_et_moblieNmuber:Landroid/widget/EditText;

.field public unicom_et_yzm:Landroid/widget/EditText;

.field private woSDKCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/high16 v1, -0x1000000

    .line 59
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomBaseDialog;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v0, "^\\d{11}$"

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->ZZBDS_ISMOBLIEPHONE:Ljava/lang/String;

    .line 56
    const-string v0, "^\\d{6}$"

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->ZZBDS_ISYZM:Ljava/lang/String;

    .line 319
    const/16 v0, 0x3c

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mCount:I

    .line 377
    const/4 v0, 0x2

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->SMS_YZM_FAIL:I

    .line 379
    const/4 v0, 0x3

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->SMS_PHONENUM_OK:I

    .line 381
    const/4 v0, 0x4

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->SMS_PHONENUM_FAIL:I

    .line 383
    const/4 v0, 0x5

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->SMS_REJESTRE_FAIL:I

    .line 385
    new-instance v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;

    invoke-direct {v0, p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$1;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mContext:Landroid/content/Context;

    .line 61
    sget v0, Lcom/unicom/iap/utils/UICommonUtils;->unicom_smsnumber_dialog:I

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->setContentView(I)V

    .line 63
    sget v0, Lcom/unicom/iap/utils/UICommonUtils;->unicom_et_moblieNmuber:I

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 62
    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_moblieNmuber:Landroid/widget/EditText;

    .line 64
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_moblieNmuber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 66
    sget v0, Lcom/unicom/iap/utils/UICommonUtils;->unicom_et_yzm:I

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 65
    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_yzm:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_yzm:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 69
    sget v0, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_yzm:I

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_activation:I

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_activation:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_activation:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->woSDKCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 76
    return-void
.end method

.method private StopTimerCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const/16 v0, 0x3c

    iput v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mCount:I

    .line 363
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 365
    iput-object v2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 370
    iput-object v2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTask:Ljava/util/TimerTask;

    .line 372
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->StopTimerCount()V

    return-void
.end method

.method static synthetic access$1(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->woSDKCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    return-object v0
.end method

.method static synthetic access$3(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->syncOrderShipSDK(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    return-void
.end method

.method static synthetic access$4(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;I)V
    .locals 0

    .prologue
    .line 319
    iput p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mCount:I

    return-void
.end method

.method private getYzm()V
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_moblieNmuber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "phoneNumber":Ljava/lang/String;
    const-string v2, "smsCode"

    invoke-static {v2}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 297
    .local v1, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "userid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v2, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$5;

    invoke-direct {v2, p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$5;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    invoke-static {v1, v2}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 315
    return-void
.end method

.method private initSdk(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "cpid"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "appversion"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unicom/iap/utils/DataManager;->apptype:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/unicom/iap/utils/DataManager;->appversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$2;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;I)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverRegisterCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 129
    return-void
.end method

.method private matchStr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "compile"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 284
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private registerSDK(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->switchButtonEnter(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->initSdk(I)V

    goto :goto_0
.end method

.method private final smsGetPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "vcode"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v1, "smsNumber"

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 163
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "vcode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;

    invoke-direct {v1, p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$3;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 192
    return-void
.end method

.method private startTimerCount()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 326
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "       "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u79d2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    const-string v4, "       "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    .line 333
    :cond_0
    new-instance v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-direct {v0, p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTask:Ljava/util/TimerTask;

    .line 354
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 355
    return-void
.end method

.method private syncOrderShipSDK(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 200
    const-string v1, "queryOrders"

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userid"

    invoke-static {p1}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$4;-><init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 247
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_yzm:I

    if-ne v0, v1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_moblieNmuber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->ZZBDS_ISMOBLIEPHONE:Ljava/lang/String;

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->matchStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->startTimerCount()V

    .line 256
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    invoke-direct {p0, v2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->registerSDK(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_activation:I

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_yzm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->ZZBDS_ISYZM:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->matchStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    const-string v0, "\u6b63\u5728\u6fc0\u6d3b\uff0c\u8bf7\u7a0d\u540e\u2026\u2026"

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->showProgress(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->registerSDK(I)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public switchButtonEnter(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->getYzm()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_moblieNmuber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_et_yzm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->smsGetPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
