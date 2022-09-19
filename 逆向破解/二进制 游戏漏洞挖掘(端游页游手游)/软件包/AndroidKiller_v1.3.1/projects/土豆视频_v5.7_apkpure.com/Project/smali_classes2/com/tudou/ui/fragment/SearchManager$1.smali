.class Lcom/tudou/ui/fragment/SearchManager$1;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->excueGetShow(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$isnoqc:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$keyType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$isnoqc:Z

    iput-object p4, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$keyType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 348
    const-string v0, "search_3.7"

    const-string v1, "excueGetShow---onFailed"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object v2, v0, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    .line 353
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object v2, v0, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    .line 354
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v0, v2}, Lcom/tudou/ui/fragment/SearchManager;->setDirectDao(Lcom/youku/vo/SearchDirectDao;)V

    .line 355
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$key:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$isnoqc:Z

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$1;->val$keyType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 356
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 283
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    .line 284
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    .line 285
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tudou/ui/fragment/SearchManager;->setDirectDao(Lcom/youku/vo/SearchDirectDao;)V

    .line 286
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "str":Ljava/lang/String;
    const-string v3, "search_3.7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "excueGetShow---onSuccess : str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const-class v3, Lcom/youku/vo/SearchDirectDao;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDao;

    invoke-virtual {v4, v3}, Lcom/tudou/ui/fragment/SearchManager;->setDirectDao(Lcom/youku/vo/SearchDirectDao;)V

    .line 290
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->status:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "success"

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDao;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getCateIds()Ljava/util/ArrayList;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchManager;->access$000(Lcom/tudou/ui/fragment/SearchManager;)Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchManager;->access$000(Lcom/tudou/ui/fragment/SearchManager;)Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    .line 296
    .local v1, "object":Lcom/youku/vo/SearchDirectDaoShowItem;
    invoke-virtual {v1}, Lcom/youku/vo/SearchDirectDaoShowItem;->dealWithSources()V

    .line 297
    iget-object v3, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    invoke-virtual {v3}, Lcom/youku/vo/SearchDirectDaoSources;->setItemPlayMode()V

    .line 300
    :cond_0
    iget v3, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->hide:I

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    .end local v1    # "object":Lcom/youku/vo/SearchDirectDaoShowItem;
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    new-instance v5, Lcom/tudou/ui/fragment/SearchManager$1$1;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SearchManager$1$1;-><init>(Lcom/tudou/ui/fragment/SearchManager$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->checkAttentions(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V

    .line 344
    return-void
.end method
