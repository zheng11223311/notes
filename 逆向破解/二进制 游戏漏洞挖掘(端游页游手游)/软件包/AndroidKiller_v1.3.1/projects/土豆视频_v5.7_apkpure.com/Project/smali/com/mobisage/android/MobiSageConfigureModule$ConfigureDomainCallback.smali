.class Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;
.super Ljava/lang/Object;
.source "MobiSageConfigureModule.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageConfigureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureDomainCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageConfigureModule;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageConfigureModule$1;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;)V

    return-void
.end method


# virtual methods
.method public onMobiSageActionError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 7
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    :try_start_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$500(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 350
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "cfgurl"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "isupdate"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v3

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4, v0}, Lcom/mobisage/android/MobiSageConfigureModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 355
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    const-string v4, "domain"

    invoke-static {v3, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->access$1000(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 357
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 358
    const-string v3, "cfg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 359
    .local v1, "cfgJArray":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svrcfginfo1"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svrcfginfo2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svrcfginfo3"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svrcfginfo4"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svrcfginfo5"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cfg/cfg.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v1    # "cfgJArray":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 370
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_3
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const-string v4, "http://config.adsage.com/cfg/cfg.js"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const-string v4, "http://config.adsage.cn/cfg/cfg.js"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const-string v4, "http://config.mobisage.cn/cfg/cfg.js"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const-string v4, "http://config.minesage.com/cfg/cfg.js"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v3

    const-string v4, "http://config.soqugame.com/cfg/cfg.js"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 377
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    :catch_1
    move-exception v3

    move-object p1, v0

    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    goto :goto_0
.end method

.method public onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 11
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 287
    :try_start_0
    iget-object v7, p1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v8, "ResponseBody"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "responseBody":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    .local v5, "tempDic":Lorg/json/JSONObject;
    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "tempVersion":Ljava/lang/String;
    const-string v7, "cfg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    const-string v8, "domain"

    invoke-static {v7, v8, v5}, Lcom/mobisage/android/MobiSageConfigureModule;->access$700(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 293
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 294
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 295
    const-string/jumbo v7, "svr"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 296
    .local v4, "svrJArray":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "desvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "desvr"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sdk/default.js"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "juhedesvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "desvr"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sdkbox/default.js"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v8, "trcsvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trcsvr"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/trc/sdk/x.gif?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$800(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "cfgsvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cfgsvr"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cfg/cfg.js"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v4    # "svrJArray":Lorg/json/JSONObject;
    :cond_0
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 306
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 307
    const-string v7, "cfg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 308
    .local v1, "cfgJArray":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svrcfginfo1"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cfg/cfg.js"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svrcfginfo2"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cfg/cfg.js"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svrcfginfo3"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cfg/cfg.js"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svrcfginfo4"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cfg/cfg.js"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svrcfginfo5"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cfg/cfg.js"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v1    # "cfgJArray":Lorg/json/JSONObject;
    :cond_1
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7, v6}, Lcom/mobisage/android/MobiSageConfigureModule;->access$900(Lcom/mobisage/android/MobiSageConfigureModule;Ljava/lang/String;)Z

    move-result v2

    .line 323
    .local v2, "isupdate":Z
    if-eqz v2, :cond_2

    .line 324
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    :try_start_1
    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$500(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    move-result-object v7

    iput-object v7, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 327
    iget-object v8, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v9, "cfgurl"

    iget-object v7, p0, Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v7}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v7, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v8, "isupdate"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v7

    const/16 v8, 0xbb9

    invoke-virtual {v7, v8, v0}, Lcom/mobisage/android/MobiSageConfigureModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 339
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .end local v2    # "isupdate":Z
    .end local v3    # "responseBody":Ljava/lang/String;
    .end local v5    # "tempDic":Lorg/json/JSONObject;
    .end local v6    # "tempVersion":Ljava/lang/String;
    .restart local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    :cond_2
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v7

    goto :goto_0

    .end local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local v2    # "isupdate":Z
    .restart local v3    # "responseBody":Ljava/lang/String;
    .restart local v5    # "tempDic":Lorg/json/JSONObject;
    .restart local v6    # "tempVersion":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object p1, v0

    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .restart local p1    # "action":Lcom/mobisage/android/MobiSageAction;
    goto :goto_0
.end method
