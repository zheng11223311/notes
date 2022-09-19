.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->selectSigleContentOrder(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15
    .param p1, "result"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    .line 855
    const-string v1, "products"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmdtoListMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 857
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v12, "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v7, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 873
    invoke-static {v12}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 874
    .local v13, "monthStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, "contentStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/unicom/iap/utils/DataManager;->saveMonthOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$context:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unicom/iap/utils/DataManager;->saveContentOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->saveSynOrderHistroyDate(Landroid/content/Context;)V

    .line 880
    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v2, 0x1

    const-string v3, "2006"

    const-string v4, "\u767b\u9646\u6210\u529f\uff0c\u53d6\u53f7\u6210\u529f\uff0c\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f!"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 887
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "contentStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "monthStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 862
    .restart local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "i":I
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 863
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 864
    .local v14, "type":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 869
    :cond_1
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 883
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "type":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$12;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v2, 0x0

    const-string v3, "2000"

    const-string v4, "\u767b\u9646\u6210\u529f\uff0c\u7f51\u7edc\u53d6\u53f7\u6210\u529f\uff0c\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25!"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1
.end method
