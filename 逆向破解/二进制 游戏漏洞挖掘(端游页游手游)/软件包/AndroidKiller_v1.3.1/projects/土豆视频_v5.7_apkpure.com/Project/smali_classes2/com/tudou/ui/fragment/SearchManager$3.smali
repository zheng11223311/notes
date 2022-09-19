.class Lcom/tudou/ui/fragment/SearchManager$3;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->excueGetIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 467
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 448
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "str":Ljava/lang/String;
    const-string v3, "dazhu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const-class v3, Lcom/youku/vo/SearchIcon;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchIcon;

    iput-object v3, v4, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    .line 454
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 456
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    iget-object v3, v3, Lcom/youku/vo/SearchIcon;->resutls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 457
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v3, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    iget-object v3, v3, Lcom/youku/vo/SearchIcon;->resutls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchIcon$IconResults;

    iget v3, v3, Lcom/youku/vo/SearchIcon$IconResults;->site_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchManager$3;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->icons:Lcom/youku/vo/SearchIcon;

    iget-object v5, v5, Lcom/youku/vo/SearchIcon;->resutls:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SearchManager"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method
