.class Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;
.super Ljava/lang/Object;
.source "WoVideoSDKLogic.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/sdk/WoVideoSDKLogic;->sysGetOrderShipFromServiceForYouKu(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$userPhone:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$userPhone:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
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
    .line 652
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    .line 655
    const-string v1, "products"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmdtoListMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 657
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v13, "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v7, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 675
    invoke-static {v13}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 676
    .local v14, "monthStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 677
    .local v8, "contentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$context:Landroid/content/Context;

    invoke-static {v1, v14}, Lcom/unicom/iap/utils/DataManager;->saveMonthOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$context:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unicom/iap/utils/DataManager;->saveContentOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->saveSynOrderHistroyDate(Landroid/content/Context;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v9

    .line 682
    .local v9, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v9}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 683
    const-string v1, "isSaveMob"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Z)V

    .line 684
    const-string v1, "userid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$userPhone:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v9}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 686
    invoke-virtual {v9}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v2, 0x1

    const-string v3, "2006"

    const-string v4, "\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f!"

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 695
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "contentStr":Ljava/lang/String;
    .end local v9    # "db":Lcom/unicom/iap/utils/SharedDB;
    .end local v10    # "i":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "monthStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 662
    .restart local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "i":I
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v13    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 664
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 666
    .local v15, "type":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 671
    :cond_1
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 692
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "i":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v15    # "type":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unicom/iap/sdk/WoVideoSDKLogic$9;->val$callback:Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    const/4 v2, 0x0

    const-string v4, "\u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25!"

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1
.end method
