.class public Lcom/youku/vo/ChannelFilterAndOrder;
.super Ljava/lang/Object;
.source "ChannelFilterAndOrder.java"


# static fields
.field private static fo:Lcom/youku/vo/ChannelFilterAndOrder;


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

.field private filterV4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myfilters:Ljava/lang/String;

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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->order:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->orderText:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->title:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public static clearInstance()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/youku/vo/ChannelFilterAndOrder;->fo:Lcom/youku/vo/ChannelFilterAndOrder;

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/vo/ChannelFilterAndOrder;->fo:Lcom/youku/vo/ChannelFilterAndOrder;

    .line 43
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/youku/vo/ChannelFilterAndOrder;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/youku/vo/ChannelFilterAndOrder;->fo:Lcom/youku/vo/ChannelFilterAndOrder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/youku/vo/ChannelFilterAndOrder;

    invoke-direct {v0}, Lcom/youku/vo/ChannelFilterAndOrder;-><init>()V

    sput-object v0, Lcom/youku/vo/ChannelFilterAndOrder;->fo:Lcom/youku/vo/ChannelFilterAndOrder;

    .line 36
    :cond_0
    sget-object v0, Lcom/youku/vo/ChannelFilterAndOrder;->fo:Lcom/youku/vo/ChannelFilterAndOrder;

    return-object v0
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public addFilterTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/youku/vo/ChannelFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/youku/vo/ChannelFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/youku/vo/ChannelFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public addFilterV4(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public clearFilter()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    invoke-virtual {p0}, Lcom/youku/vo/ChannelFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->order:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->orderText:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public clearFilterV4()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->order:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->orderText:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public deleteFilterTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/youku/vo/ChannelFilterAndOrder;->getTitle()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public getFilter()Ljava/lang/String;
    .locals 7

    .prologue
    .line 46
    const-string v3, ""

    .line 47
    .local v3, "tempFilter":Ljava/lang/String;
    iget-object v5, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 63
    .end local v3    # "tempFilter":Ljava/lang/String;
    .local v4, "tempFilter":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 50
    .end local v4    # "tempFilter":Ljava/lang/String;
    .restart local v3    # "tempFilter":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 51
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 56
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

    .line 60
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v4, v3

    .line 63
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
    .line 80
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFilterV4()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v2, ""

    .line 68
    .local v2, "tempFilter":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v1, "strbuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v3, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filterV4:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 72
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMyfilters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->myfilters:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->orderText:Ljava/lang/String;

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
    .line 141
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->title:Ljava/util/HashMap;

    return-object v0
.end method

.method public isContainKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContainValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/vo/ChannelFilterAndOrder;->filter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMyfilters(Ljava/lang/String;)V
    .locals 0
    .param p1, "myfilters"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/vo/ChannelFilterAndOrder;->myfilters:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "ob"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/vo/ChannelFilterAndOrder;->order:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setOrderText(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderText"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/vo/ChannelFilterAndOrder;->orderText:Ljava/lang/String;

    .line 150
    return-void
.end method
