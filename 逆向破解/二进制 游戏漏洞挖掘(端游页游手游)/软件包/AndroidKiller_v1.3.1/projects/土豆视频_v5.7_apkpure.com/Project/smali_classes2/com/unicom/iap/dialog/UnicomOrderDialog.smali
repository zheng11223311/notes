.class public Lcom/unicom/iap/dialog/UnicomOrderDialog;
.super Lcom/unicom/iap/dialog/UnicomBaseDialog;
.source "UnicomOrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ORDER_PRODUCT_FAIL:I

.field private final ORDER_PRODUCT_SUCCESS:I

.field private final QUERYPRODUCT_INFO_FAIL:I

.field private final QUERYPRODUCT_INFO_SUCCESS:I

.field mHandler:Landroid/os/Handler;

.field private resultOrderCode:Ljava/lang/String;

.field private sdkCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

.field private tempParaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unicom_btn_cancle:Landroid/widget/TextView;

.field private unicom_btn_order:Landroid/widget/TextView;

.field private unicom_tv_content:Landroid/widget/TextView;

.field private unicom_tv_mobliePhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomBaseDialog;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v3, 0x1

    iput v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->QUERYPRODUCT_INFO_SUCCESS:I

    .line 211
    const/4 v3, 0x2

    iput v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->QUERYPRODUCT_INFO_FAIL:I

    .line 213
    const/4 v3, 0x3

    iput v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->ORDER_PRODUCT_SUCCESS:I

    .line 215
    const/4 v3, 0x4

    iput v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->ORDER_PRODUCT_FAIL:I

    .line 217
    const-string v3, "1006"

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->resultOrderCode:Ljava/lang/String;

    .line 219
    new-instance v3, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;

    invoke-direct {v3, p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog$1;-><init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;)V

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->mHandler:Landroid/os/Handler;

    .line 33
    sget-object v3, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 34
    const-string v3, ""

    invoke-static {v3, p1}, Lcom/unicom/iap/utils/DataManager;->getCpKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 36
    :cond_0
    sget v3, Lcom/unicom/iap/utils/UICommonUtils;->unicom_order_dialog:I

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->setContentView(I)V

    .line 37
    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    .line 41
    sget v3, Lcom/unicom/iap/utils/UICommonUtils;->unicom_tv_mobliePhone:I

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_mobliePhone:Landroid/widget/TextView;

    .line 42
    sget v3, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_cancle:I

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_btn_cancle:Landroid/widget/TextView;

    .line 43
    sget v3, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_order:I

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_btn_order:Landroid/widget/TextView;

    .line 44
    sget v3, Lcom/unicom/iap/utils/UICommonUtils;->unicom_tv_content:I

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_content:Landroid/widget/TextView;

    .line 47
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_btn_cancle:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_btn_order:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_content:Landroid/widget/TextView;

    const-string v4, "\u8bf7\u7a0d\u540e\uff0c\u4ea7\u54c1\u4fe1\u606f\u52a0\u8f7d\u4e2d......"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v1

    .line 52
    .local v1, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v1}, Lcom/unicom/iap/bean/Mob;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "userid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4eb2\u7231\u7684"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u60a8\u597d\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_mobliePhone:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iput-object p3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->sdkCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 74
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->queryProductInfo(Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_content:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/unicom/iap/dialog/UnicomOrderDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->syncOrderShipSDK(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->sdkCallback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    return-object v0
.end method

.method static synthetic access$3(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->resultOrderCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/unicom/iap/dialog/UnicomOrderDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->resultOrderCode:Ljava/lang/String;

    return-void
.end method

.method private queryProductInfo(Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 10
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v2

    .line 123
    .local v2, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "userid":Ljava/lang/String;
    const-string v8, "queryProduct"

    invoke-static {v8}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 127
    .local v4, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "1"

    const-string v9, "type"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    const-string v8, "type"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "curDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "queryOrders"

    invoke-static {v8, v9, v4}, Lcom/unicom/iap/utils/DataManager;->getProductsInfoTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "synDate":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "queryOrders"

    invoke-static {v8, v9, v4}, Lcom/unicom/iap/utils/DataManager;->getProductsInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 145
    .local v3, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "type"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "type":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    const-string v8, "ordertips"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->orderMonthInfo:Ljava/lang/String;

    .line 150
    const-string v8, "cancletips"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 151
    const-string v8, "busirange"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 153
    const-string v8, "busirules"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    .line 162
    :goto_1
    iget-object v9, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->unicom_tv_content:Landroid/widget/TextView;

    const-string v8, "ordertips"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .end local v3    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "type":Ljava/lang/String;
    :goto_2
    return-void

    .line 131
    .end local v0    # "curDate":Ljava/lang/String;
    .end local v1    # "dateformat":Ljava/text/SimpleDateFormat;
    .end local v5    # "synDate":Ljava/lang/String;
    :cond_0
    const-string v8, "type"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v8, "userid"

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v9, "section"

    const-string v8, "section"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    .restart local v0    # "curDate":Ljava/lang/String;
    .restart local v1    # "dateformat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "synDate":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "cancletips"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->orderCancletips:Ljava/lang/String;

    .line 157
    const-string v8, "busirange"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    .line 159
    const-string v8, "busirules"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    goto :goto_1

    .line 168
    .end local v3    # "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "type":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;

    invoke-direct {v8, p0, v4}, Lcom/unicom/iap/dialog/UnicomOrderDialog$2;-><init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;Ljava/util/Map;)V

    invoke-static {v4, v8}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_2
.end method

.method private syncOrderShipSDK(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const-string v1, "queryOrders"

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 294
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userid"

    invoke-static {p1}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;-><init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 334
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_order:I

    if-ne v0, v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->orderProdcut()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/unicom/iap/utils/UICommonUtils;->unicom_btn_cancle:I

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->dismiss()V

    goto :goto_0
.end method

.method public orderProdcut()V
    .locals 6

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v0

    .line 250
    .local v0, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v0}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "userid":Ljava/lang/String;
    const-string v3, "order"

    invoke-static {v3}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 253
    .local v1, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "section"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "section"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v4, "videoid"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "videoid"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v4, "videoname"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "videoname"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v4, "videourl"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "videourl"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "videoimage"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "videoimage"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v4, "type"

    iget-object v3, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog;->tempParaMap:Ljava/util/Map;

    const-string v5, "type"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v3, "userid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "\u8ba2\u8d2d\u4e2d......"

    invoke-virtual {p0, v3}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->showProgress(Ljava/lang/String;)V

    .line 263
    new-instance v3, Lcom/unicom/iap/dialog/UnicomOrderDialog$3;

    invoke-direct {v3, p0}, Lcom/unicom/iap/dialog/UnicomOrderDialog$3;-><init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;)V

    invoke-static {v1, v3}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 286
    return-void
.end method
