.class Lcom/unicom/iap/dialog/UnicomOrderDialog$4;
.super Ljava/lang/Object;
.source "UnicomOrderDialog.java"

# interfaces
.implements Lcom/unicom/iap/dataengine/ServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomOrderDialog;->syncOrderShipSDK(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomOrderDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    iput-object p2, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->val$context:Landroid/content/Context;

    .line 296
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
    .line 299
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    .line 301
    const-string v1, "products"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unicom/iap/dataengine/ServerEngine;->decodeCmdtoListMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 303
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v12, "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v7, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 316
    invoke-static {v12}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 317
    .local v13, "monthStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "contentStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/unicom/iap/utils/DataManager;->saveMonthOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unicom/iap/utils/DataManager;->saveContentOrderInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unicom/iap/utils/DataManager;->saveSynOrderHistroyDate(Landroid/content/Context;)V

    .line 321
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->closeProgress()V

    .line 322
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$2(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "2005"

    const-string v4, "\u8ba2\u8d2d\u6210\u529f"

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 323
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->cancel()V

    .line 330
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "contentStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "monthStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 307
    .restart local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "i":I
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 308
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 309
    .local v14, "type":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 325
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "monthList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "type":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->closeProgress()V

    .line 326
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-static {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->access$2(Lcom/unicom/iap/dialog/UnicomOrderDialog;)Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "2005"

    const-string v4, "\u8ba2\u8d2d\u6210\u529f"

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface/range {v1 .. v6}, Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;->sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 327
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomOrderDialog$4;->this$0:Lcom/unicom/iap/dialog/UnicomOrderDialog;

    invoke-virtual {v1}, Lcom/unicom/iap/dialog/UnicomOrderDialog;->cancel()V

    goto :goto_1
.end method
