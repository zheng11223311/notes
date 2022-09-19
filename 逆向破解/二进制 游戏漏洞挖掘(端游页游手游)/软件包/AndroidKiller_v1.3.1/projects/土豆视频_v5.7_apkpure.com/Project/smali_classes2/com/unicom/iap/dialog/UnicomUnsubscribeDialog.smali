.class public Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;
.super Lcom/unicom/iap/dialog/UnicomBaseDialog;
.source "UnicomUnsubscribeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final UNSUBSCRIBE_FAIL:I = 0x2

.field private static final UNSUBSCRIBE_SUCCESS:I = 0x1

.field private static final UNSUBSCRIBE_SYS_FAIL:I = 0x4

.field private static final UNSUBSCRIBE_SYS_SUCCESS:I = 0x3


# instance fields
.field mHandler:Landroid/os/Handler;

.field private sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

.field private unicom_tv_content:Landroid/widget/TextView;

.field private unicom_tv_mobliePhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomBaseDialog;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v5, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;

    invoke-direct {v5, p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$1;-><init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)V

    iput-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->mHandler:Landroid/os/Handler;

    .line 36
    sget v5, Lcom/unicom/iap/utils/UICommonUtils;->unicom_unsubscribe_dialog:I

    invoke-virtual {p0, v5}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->setContentView(I)V

    .line 37
    sget-object v5, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 38
    const-string v5, ""

    invoke-static {v5, p1}, Lcom/unicom/iap/utils/DataManager;->getCpKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 40
    :cond_0
    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 42
    sget v5, Lcom/unicom/iap/utils/UICommonUtils;->unicom_tv_mobliePhone:I

    invoke-virtual {p0, v5}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 41
    iput-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_mobliePhone:Landroid/widget/TextView;

    .line 45
    sget v5, Lcom/unicom/iap/utils/UICommonUtils;->unicom_tv_content:I

    invoke-virtual {p0, v5}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 44
    iput-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_content:Landroid/widget/TextView;

    .line 49
    invoke-static {p1}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v2

    .line 50
    .local v2, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "userid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4eb2\u7231\u7684"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u7528\u6237\u60a8\u597d!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_mobliePhone:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_content:Landroid/widget/TextView;

    sget-object v6, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object v5, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 55
    iget-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_content:Landroid/widget/TextView;

    const-string v6, "\u8bf7\u7a0d\u540e\uff0c\u4ea7\u54c1\u4fe1\u606f\u52a0\u8f7d\u4e2d......"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->queryProductInfo()V

    .line 60
    :cond_1
    sget v5, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_unsubscribe:I

    invoke-virtual {p0, v5}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 59
    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, "tv":Landroid/widget/TextView;
    sget v5, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_cancle:I

    invoke-virtual {p0, v5}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "cancle":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v5, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_mobliePhone:Landroid/widget/TextView;

    const-string v6, "\u60a8\u8fd8\u672a\u53d6\u53f7\uff0c\u8bf7\u901a\u8fc7\u77ed\u4fe1\u53d6\u53f7\u65b9\u5f0f\u53d6\u53f7\u540e\uff0c\u518d\u6b21\u64cd\u4f5c"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unicom_tv_content:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->syncOrderShipSDK(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    return-object v0
.end method

.method private queryProductInfo()V
    .locals 3

    .prologue
    .line 88
    const-string v1, "queryProduct"

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 89
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$2;-><init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 134
    return-void
.end method

.method private syncOrderShipSDK(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v1, "queryOrders"

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 218
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userid"

    invoke-static {p1}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$4;-><init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 261
    return-void
.end method

.method private unsubscribe(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 4
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v0

    .line 175
    .local v0, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v0}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "userid":Ljava/lang/String;
    const-string v3, "cancelOrder"

    invoke-static {v3}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 180
    .local v1, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "userid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v3, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$3;

    invoke-direct {v3, p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog$3;-><init>(Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;)V

    invoke-static {v1, v3}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_unsubscribe:I

    if-ne v0, v2, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/iap/sdk/WoVideoSDK;->getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "monthJson":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 143
    const-class v0, Ljava/util/ArrayList;

    .line 142
    invoke-static {v8, v0}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 144
    .local v6, "list":Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 145
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 146
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "status"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "status":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const-string v2, "9006"

    const-string v3, "\u5df2\u9000\u8ba2\u6210\u529f\uff0c\u8bf7\u4e0d\u8981\u91cd\u590d\u9000\u8ba2"

    .line 149
    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 148
    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 150
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->dismiss()V

    .line 169
    .end local v6    # "list":Ljava/util/ArrayList;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "monthJson":Ljava/lang/String;
    .end local v9    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v6    # "list":Ljava/util/ArrayList;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "monthJson":Ljava/lang/String;
    .restart local v9    # "status":Ljava/lang/String;
    :cond_1
    const-string v0, "\u6b63\u5728\u9000\u8ba2\u4e2d\uff0c\u8bf7\u7a0d\u540e......."

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->showProgress(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    invoke-direct {p0, v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unsubscribe(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    goto :goto_0

    .line 160
    .end local v6    # "list":Ljava/util/ArrayList;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "status":Ljava/lang/String;
    :cond_2
    const-string v0, "\u6b63\u5728\u9000\u8ba2\u4e2d\uff0c\u8bf7\u7a0d\u540e......."

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->showProgress(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->sdkcallBack:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    invoke-direct {p0, v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->unsubscribe(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    goto :goto_0

    .line 165
    .end local v8    # "monthJson":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_cancle:I

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->dismiss()V

    goto :goto_0
.end method
