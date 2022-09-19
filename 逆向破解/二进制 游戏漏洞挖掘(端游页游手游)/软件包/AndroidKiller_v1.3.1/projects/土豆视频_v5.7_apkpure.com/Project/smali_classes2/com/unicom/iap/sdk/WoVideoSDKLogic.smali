.class public final Lcom/unicom/iap/sdk/WoVideoSDKLogic;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->syncOrderShipSDKInit(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 703
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->clear(Landroid/content/Context;)V

    .line 704
    return-void
.end method

.method public static getContentOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 721
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getContentOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 726
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTermsOfService(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 735
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    const/4 v1, 0x0

    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u53d6\u5f97\u670d\u52a1\u6761\u6b3e\u4fe1\u606f\u5931\u8d25!"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 740
    :cond_0
    sget-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 742
    const/4 v1, 0x1

    const-string v2, "2222"

    const-string v3, "\u83b7\u53d6\u4e1a\u52a1\u6761\u6b3e\u6210\u529f"

    sget-object v4, Lcom/unicom/iap/sdk/WoVideoSDK;->termsOfService:Ljava/lang/String;

    const/16 v5, 0x8

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 776
    :goto_0
    return-void

    .line 747
    :cond_1
    const-string v0, "queryProduct"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 748
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "type"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;

    invoke-direct {v0, p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$10;-><init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static getUploadFileUrlWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
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
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 343
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u4e0a\u4f20\u5730\u5740\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 398
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u4e0a\u4f20\u5730\u5740\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 353
    :cond_1
    if-nez p1, :cond_2

    .line 355
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v6

    .line 361
    .local v6, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v6}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "userid":Ljava/lang/String;
    const-string v0, "fileUploadUrl"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 364
    .local v7, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "filename"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 368
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 372
    :cond_3
    const-string v1, "url"

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "filename"

    const-string v0, "filename"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "modelnumber"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    const-string v1, "modelnumber"

    const-string v0, "modelnumber"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_4
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$6;

    invoke-direct {v0, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$6;-><init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v7, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto/16 :goto_0
.end method

.method public static identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
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
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 264
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u514d\u6d41\u5730\u5740\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 333
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u514d\u6d41\u5730\u5740\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 274
    :cond_1
    if-nez p1, :cond_2

    .line 276
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;

    move-result-object v6

    .line 282
    .local v6, "mob":Lcom/unicom/iap/bean/Mob;
    invoke-virtual {v6}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "userid":Ljava/lang/String;
    const-string v0, "queryPlayUrl"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 285
    .local v7, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "videoid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "videourl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v2, v0

    const-string v0, "tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 289
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 293
    :cond_3
    const-string v1, "videoid"

    const-string v0, "videoid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "videourl"

    const-string v0, "videourl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "tag"

    const-string v0, "tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "videoname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 300
    const-string v1, "videoname"

    const-string v0, "videoname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_4
    const-string v0, "phoneversion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 304
    const-string v1, "phoneversion"

    const-string v0, "phoneversion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_5
    const-string v0, "phonetype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 308
    const-string v1, "phonetype"

    const-string v0, "phonetype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_6
    const-string v0, "modelnumber"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 312
    const-string v1, "modelnumber"

    const-string v0, "modelnumber"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_7
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;

    invoke-direct {v0, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$5;-><init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v7, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto/16 :goto_0
.end method

.method public static netGetNumber(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "busiid"

    const-string v2, "netNumber"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "timestamp"

    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "sdkversion"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->SDkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
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

    .line 125
    new-instance v1, Lcom/unicom/iap/sdk/WoVideoSDKLogic$2;

    invoke-direct {v1, p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$2;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v0, v1}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 149
    return-void
.end method

.method public static queryUserInfo(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 223
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u7528\u4fe1\u606f\u9519\u8bef\uff0c\u63d0\u793a\u77ed\u4fe1\u53d6\u53f7!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 227
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u83b7\u53d6\u7528\u4fe1\u606f\u9519\u8bef\uff0c\u63d0\u793a\u77ed\u4fe1\u53d6\u53f7!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 232
    :cond_1
    const-string v0, "queryUserInfo"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 233
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;

    invoke-direct {v0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$4;-><init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    .line 253
    return-void
.end method

.method public static registerSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "appid"    # Ljava/lang/String;
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callBack"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/unicom/iap/utils/UICommonUtils;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    const-string v2, "1002"

    const-string v3, "\u53c2\u6570\u683c\u5f0f\u6709\u95ee\u9898!"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p5

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 53
    :cond_1
    invoke-static {p4}, Lcom/unicom/iap/utils/UICommonUtils;->initResourcesID(Landroid/content/Context;)V

    .line 55
    sput-object p0, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    .line 56
    sput-object p1, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    .line 57
    sput-object p2, Lcom/unicom/iap/utils/DataManager;->jiesuoKey:Ljava/lang/String;

    .line 58
    sput-object p3, Lcom/unicom/iap/utils/DataManager;->appversion:Ljava/lang/String;

    .line 60
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v6, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "cpid"

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "appversion"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->apptype:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->appversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p4}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {p2, p4}, Lcom/unicom/iap/utils/DataManager;->getCpKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 70
    invoke-static {p4, p5}, Lcom/unicom/iap/sdk/WoVideoSDKLogic;->syncOrderShipSDKInit(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 107
    :goto_0
    return-void

    .line 74
    :cond_2
    sget-object v0, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 76
    const-string v0, ""

    invoke-static {v0, p4}, Lcom/unicom/iap/utils/DataManager;->getCpKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 80
    :cond_3
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;

    invoke-direct {v0, p4, p5}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$1;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverRegisterCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static selectSigleContentOrder(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 832
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u67e5\u8be2\u7528\u6237\u5355\u5185\u5bb9\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 891
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u67e5\u8be2\u7528\u6237\u5355\u5185\u5bb9\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 843
    :cond_1
    const-string v0, "queryOrders"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 844
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static showOrderDialog(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;
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
    .local p1, "paraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 409
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u8ba2\u8d2d\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 439
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u8ba2\u8d2d\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 419
    :cond_1
    if-nez p1, :cond_2

    .line 421
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 424
    :cond_2
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 425
    .local v6, "type":Ljava/lang/String;
    const-string v0, "videoid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 426
    .local v7, "videoid":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 428
    :cond_3
    const-string v2, "1002"

    const-string v3, "\u4f20\u5165\u7684\u7c7b\u578b\u5fc5\u987b\u4e3a 0 \u6216\u8005 1\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 432
    :cond_4
    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v7, :cond_5

    .line 434
    const-string v2, "1002"

    const-string v3, "\u7c7b\u578b\u4e3a\u5305\u5185\u5bb9\uff0c\u8bf7\u4f20\u5165\u89c6\u9891\u7684ID\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 438
    :cond_5
    new-instance v0, Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/unicom/iap/dialog/UnicomOrderDialog;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->show()V

    goto :goto_0
.end method

.method public static showSmsNumberDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 448
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v1, 0x0

    const-string v2, "1003"

    const-string v3, "\u8bf7\u521d\u59cb\u5316sdk\u4fe1\u606f!"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->show()V

    goto :goto_0
.end method

.method public static showUnssbscribeDialog(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 464
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u9000\u8ba2\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 476
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u9000\u8ba2\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 475
    :cond_1
    new-instance v0, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-virtual {v0}, Lcom/unicom/iap/dialog/UnicomUnsubscribeDialog;->show()V

    goto :goto_0
.end method

.method private static syncOrderShipSDKInit(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v1, 0x1

    .line 156
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "curDate":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getSynOrderHistoryDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "synDate":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v2, "2006"

    const-string v3, "\u767b\u9646\u6210\u529f\uff0c\u53d6\u53f7\u6210\u529f\uff0c\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f!"

    const/4 v4, 0x0

    move-object v0, p1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 214
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "queryOrders"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 167
    .local v8, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$3;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$3;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v8, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static sysBusirange(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    .line 784
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const/4 v1, 0x0

    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u53d6\u5f97\u4e1a\u52a1\u8303\u56f4\u4fe1\u606f\u5931\u8d25!"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 789
    :cond_0
    sget-object v0, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 791
    const/4 v1, 0x1

    const-string v2, "2223"

    const-string v3, "\u83b7\u53d6\u4e1a\u52a1\u8303\u56f4\u6210\u529f"

    sget-object v4, Lcom/unicom/iap/sdk/WoVideoSDK;->busirange:Ljava/lang/String;

    const/16 v5, 0x8

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 825
    :goto_0
    return-void

    .line 796
    :cond_1
    const-string v0, "queryProduct"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 797
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "type"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$11;

    invoke-direct {v0, p0}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$11;-><init>(Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static sysGetOrderShip(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    .line 484
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 552
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 495
    :cond_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 496
    .local v7, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, "curDate":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getSynOrderHistoryDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 499
    .local v9, "synDate":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    const/4 v1, 0x1

    const-string v2, "2006"

    const-string v3, "\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 505
    :cond_2
    const-string v0, "queryOrders"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 506
    .local v8, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$7;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$7;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v8, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static sysGetOrderShipFromService(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v1, 0x0

    .line 561
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 621
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->isGetNumber(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    const-string v2, "1004"

    const-string v3, "\u56e0\u4e3a\u53d6\u53f7\u5931\u8d25\u5bfc\u81f4\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 574
    :cond_1
    const-string v0, "queryOrders"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 575
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$8;

    invoke-direct {v0, p0, p1}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$8;-><init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method

.method public static sysGetOrderShipFromServiceForYouKu(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userPhone"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v1, 0x0

    .line 631
    invoke-static {}, Lcom/unicom/iap/utils/DataManager;->isInitCPinfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v2, "1003"

    const-string v3, "\u56e0\u4e3a\u6ce8\u518c\u5931\u8d25\u5bfc\u81f4\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c\u63d0\u793a\u77ed\u4fe1\u6fc0\u6d3b!"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 699
    :goto_0
    return-void

    .line 636
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 638
    :cond_1
    const-string v2, "1004"

    const-string v3, "\u4f20\u5165\u7684\u7528\u6237\u53f7\u7801\u4e3a\u7a7a\uff01"

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 644
    :cond_2
    const-string v0, "queryOrders"

    invoke-static {v0}, Lcom/unicom/iap/utils/DataManager;->getGenerateContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 645
    .local v6, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userid"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    invoke-static {v6, v0}, Lcom/unicom/iap/dataengine/ServerEngine;->serverCallAsync(Ljava/util/Map;Lcom/unicom/iap/dataengine/ServerCallback;)V

    goto :goto_0
.end method
