.class Lcom/youku/analytics/AnalyticsBase$1;
.super Ljava/lang/Object;
.source "AnalyticsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsBase;->sendAppReport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/analytics/AnalyticsBase;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsBase$1;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsBase$1;->val$context:Landroid/content/Context;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, "bodies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :try_start_0
    iget-object v6, p0, Lcom/youku/analytics/AnalyticsBase$1;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v7, p0, Lcom/youku/analytics/AnalyticsBase$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/youku/analytics/AnalyticsBase;->access$0(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e1":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v2    # "e1":Lorg/json/JSONException;
    :cond_1
    const/4 v4, 0x0

    .line 331
    .local v4, "header":Lorg/json/JSONObject;
    :try_start_1
    iget-object v6, p0, Lcom/youku/analytics/AnalyticsBase$1;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v7, p0, Lcom/youku/analytics/AnalyticsBase$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/youku/analytics/AnalyticsBase;->access$1(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 336
    :goto_1
    if-nez v4, :cond_2

    .line 337
    const-string v6, "Error in generating header json"

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :catch_1
    move-exception v2

    .line 333
    .local v2, "e1":Ljava/lang/Exception;
    const-string v6, "Error in generating header json"

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 334
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v2    # "e1":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .local v3, "firstSendJSON":Lorg/json/JSONObject;
    const-string v6, "h"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v6, "b"

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    iget-object v6, p0, Lcom/youku/analytics/AnalyticsBase$1;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v7, p0, Lcom/youku/analytics/AnalyticsBase$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v7, v3}, Lcom/youku/analytics/AnalyticsBase;->access$2(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 351
    .end local v3    # "firstSendJSON":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 353
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 354
    .local v5, "secondSendJSON":Lorg/json/JSONObject;
    const-string v6, "h"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v6, "b"

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    iget-object v6, p0, Lcom/youku/analytics/AnalyticsBase$1;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v7, p0, Lcom/youku/analytics/AnalyticsBase$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v7, v5}, Lcom/youku/analytics/AnalyticsBase;->access$3(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 357
    .end local v5    # "secondSendJSON":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Error in generating json"

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 359
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 347
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Error in generating json"

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 348
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
