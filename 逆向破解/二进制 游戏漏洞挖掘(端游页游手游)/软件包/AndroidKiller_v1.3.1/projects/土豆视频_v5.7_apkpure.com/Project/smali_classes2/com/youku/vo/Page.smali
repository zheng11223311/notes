.class public Lcom/youku/vo/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private pageCount:I

.field private pageNo:I

.field private pageSize:I

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/youku/vo/Page;->pageNo:I

    .line 11
    iput v0, p0, Lcom/youku/vo/Page;->pageCount:I

    return-void
.end method

.method public static getPage(Lorg/json/JSONObject;)Lcom/youku/vo/Page;
    .locals 3
    .param p0, "pageObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 57
    new-instance v0, Lcom/youku/vo/Page;

    invoke-direct {v0}, Lcom/youku/vo/Page;-><init>()V

    .line 59
    .local v0, "page":Lcom/youku/vo/Page;
    if-nez p0, :cond_0

    .line 60
    invoke-virtual {v0, v2}, Lcom/youku/vo/Page;->setPageNo(I)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/youku/vo/Page;->setPageCount(I)V

    .line 69
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v1, "totalCount"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setTotalCount(I)V

    .line 65
    const-string v1, "pageNo"

    invoke-static {p0, v1, v2}, Lcom/youku/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageNo(I)V

    .line 66
    const-string v1, "pageSize"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 67
    const-string v1, "pageCount"

    invoke-static {p0, v1, v2}, Lcom/youku/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public dePageNo()V
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/vo/Page;->pageNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youku/vo/Page;->pageNo:I

    .line 36
    return-void
.end method

.method public enPageNo()V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/youku/vo/Page;->pageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/vo/Page;->pageNo:I

    .line 32
    return-void
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/vo/Page;->pageCount:I

    return v0
.end method

.method public getPageNo()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/vo/Page;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/youku/vo/Page;->pageSize:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/youku/vo/Page;->totalCount:I

    return v0
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/youku/vo/Page;->pageCount:I

    .line 54
    return-void
.end method

.method public setPageNo(I)V
    .locals 0
    .param p1, "pageNo"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/youku/vo/Page;->pageNo:I

    .line 28
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/vo/Page;->pageSize:I

    .line 46
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/youku/vo/Page;->totalCount:I

    .line 20
    return-void
.end method
