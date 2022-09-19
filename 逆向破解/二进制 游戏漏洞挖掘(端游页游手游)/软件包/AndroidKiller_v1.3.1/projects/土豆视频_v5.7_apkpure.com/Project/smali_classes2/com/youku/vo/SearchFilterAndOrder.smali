.class public Lcom/youku/vo/SearchFilterAndOrder;
.super Ljava/lang/Object;
.source "SearchFilterAndOrder.java"


# static fields
.field private static fo:Lcom/youku/vo/SearchFilterAndOrder;


# instance fields
.field private filter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public order:Ljava/lang/String;

.field private orderText:Ljava/lang/String;

.field private title:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->orderText:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->title:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/youku/vo/SearchFilterAndOrder;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/youku/vo/SearchFilterAndOrder;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/youku/vo/SearchFilterAndOrder;

    invoke-direct {v0}, Lcom/youku/vo/SearchFilterAndOrder;-><init>()V

    sput-object v0, Lcom/youku/vo/SearchFilterAndOrder;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    .line 25
    :cond_0
    sget-object v0, Lcom/youku/vo/SearchFilterAndOrder;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    return-object v0
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addFilterTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/youku/vo/SearchFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/youku/vo/SearchFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/youku/vo/SearchFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public clearFilter()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    invoke-virtual {p0}, Lcom/youku/vo/SearchFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->orderText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public deleteFilterTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/youku/vo/SearchFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public getFilter()Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    const-string v3, ""

    .line 30
    .local v3, "tempFilter":Ljava/lang/String;
    iget-object v5, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 46
    .end local v3    # "tempFilter":Ljava/lang/String;
    .local v4, "tempFilter":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 33
    .end local v4    # "tempFilter":Ljava/lang/String;
    .restart local v3    # "tempFilter":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 34
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 43
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v4, v3

    .line 46
    .end local v3    # "tempFilter":Ljava/lang/String;
    .restart local v4    # "tempFilter":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFilterMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->orderText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->title:Ljava/util/HashMap;

    return-object v0
.end method

.method public isContainKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContainValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/vo/SearchFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "ob"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setOrderText(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderText"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/vo/SearchFilterAndOrder;->orderText:Ljava/lang/String;

    .line 109
    return-void
.end method
