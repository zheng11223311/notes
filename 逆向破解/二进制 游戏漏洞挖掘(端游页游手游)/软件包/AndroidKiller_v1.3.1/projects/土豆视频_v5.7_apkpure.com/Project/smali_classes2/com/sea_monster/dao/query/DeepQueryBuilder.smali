.class public Lcom/sea_monster/dao/query/DeepQueryBuilder;
.super Ljava/lang/Object;
.source "DeepQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static LOG_SQL:Z

.field public static LOG_VALUES:Z


# instance fields
.field private final dao:Lcom/sea_monster/dao/AbstractDeepDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private orderBuilder:Ljava/lang/StringBuilder;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final whereConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sea_monster/dao/AbstractDeepDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    .line 54
    return-void
.end method

.method private appendGroupClause(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/Property;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 417
    const-string v2, " GROUP BY "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 419
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/Property;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const-string v2, " , "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/Property;

    .line 424
    .local v1, "property":Lcom/sea_monster/dao/Property;
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->asName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/sea_monster/dao/internal/SqlUtils;->appendColumn(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 427
    :cond_1
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->asName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sea_monster/dao/internal/SqlUtils;->appendColumn(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    .end local v0    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/Property;>;"
    .end local v1    # "property":Lcom/sea_monster/dao/Property;
    :cond_2
    return-void
.end method

.method private appendWhereClause(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 399
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 400
    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 403
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const-string v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/WhereCondition;

    .line 408
    .local v0, "condition":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-interface {v0, p1}, Lcom/sea_monster/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;)V

    .line 409
    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/sea_monster/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    .line 412
    .end local v0    # "condition":Lcom/sea_monster/dao/query/WhereCondition;
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition;>;"
    :cond_1
    return-void
.end method

.method private checkOrderBuilder()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static internalCreate(Lcom/sea_monster/dao/AbstractDeepDao;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT2;*>;)",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/DeepQueryBuilder;

    invoke-direct {v0, p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;-><init>(Lcom/sea_monster/dao/AbstractDeepDao;)V

    return-object v0
.end method

.method private varargs orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V
    .locals 6
    .param p1, "ascOrDescWithLeadingSpace"    # Ljava/lang/String;
    .param p2, "properties"    # [Lcom/sea_monster/dao/Property;

    .prologue
    .line 175
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    move-object v0, p2

    .local v0, "arr$":[Lcom/sea_monster/dao/Property;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 176
    .local v3, "property":Lcom/sea_monster/dao/Property;
    invoke-direct {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->checkOrderBuilder()V

    .line 177
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;

    .line 178
    const-class v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v5, " COLLATE LOCALIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "property":Lcom/sea_monster/dao/Property;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V
    .locals 0
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "condition"    # Lcom/sea_monster/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3, p1}, Lcom/sea_monster/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;)V

    .line 133
    invoke-interface {p3, p2}, Lcom/sea_monster/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public varargs and(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 108
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    const-string v0, " AND "

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->combineWhereConditions(Ljava/lang/String;Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method protected append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "property"    # Lcom/sea_monster/dao/Property;

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    const/16 v2, 0x27

    .line 208
    iget-object v0, p2, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    return-object p1
.end method

.method public build()Lcom/sea_monster/dao/query/DeepQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeepQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v5}, Lcom/sea_monster/dao/AbstractDeepDao;->getSelectDeep()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "select":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 260
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 261
    const-string v5, " ORDER BY "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    const/4 v1, -0x1

    .line 265
    .local v1, "limitPosition":I
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->limit:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 266
    const-string v5, " LIMIT ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->limit:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 271
    :cond_1
    const/4 v2, -0x1

    .line 272
    .local v2, "offsetPosition":I
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->offset:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 273
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->limit:Ljava/lang/Integer;

    if-nez v5, :cond_2

    .line 274
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Offset cannot be set without limit"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_2
    const-string v5, " OFFSET ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->offset:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 282
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "sql":Ljava/lang/String;
    sget-boolean v5, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_SQL:Z

    if-eqz v5, :cond_4

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Built SQL for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 287
    :cond_4
    sget-boolean v5, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_VALUES:Z

    if-eqz v5, :cond_5

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Values for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 291
    :cond_5
    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6, v1, v2}, Lcom/sea_monster/dao/query/DeepQuery;->create(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v5

    return-object v5
.end method

.method public buildCount()Lcom/sea_monster/dao/query/CountQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v4}, Lcom/sea_monster/dao/AbstractDeepDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "tablename":Ljava/lang/String;
    invoke-static {v3}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built SQL for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 391
    :cond_0
    sget-boolean v4, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    iget-object v5, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sea_monster/dao/query/CountQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/CountQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildGroup(Lcom/sea_monster/dao/Property;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;
    .locals 2
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/Property;",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/FuncProperty;",
            ">;)",
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p2, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {p0, v0, p2}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v1

    return-object v1
.end method

.method public buildGroup(Ljava/util/List;Lcom/sea_monster/dao/FuncProperty;)Lcom/sea_monster/dao/query/GroupQuery;
    .locals 2
    .param p2, "funcProperty"    # Lcom/sea_monster/dao/FuncProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/Property;",
            ">;",
            "Lcom/sea_monster/dao/FuncProperty;",
            ")",
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    if-eqz p2, :cond_0

    .line 312
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v1

    return-object v1
.end method

.method public buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/dao/FuncProperty;",
            ">;)",
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    .local p2, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 323
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/dao/Property;

    .line 324
    .local v3, "item":Lcom/sea_monster/dao/Property;
    iget-object v6, v3, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    iget-object v7, v3, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lcom/sea_monster/dao/internal/SqlUtils;->appendColumn(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_0

    .line 326
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v3    # "item":Lcom/sea_monster/dao/Property;
    :cond_1
    if-eqz p2, :cond_4

    .line 332
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 333
    .local v4, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/FuncProperty;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 334
    const-string v6, " , "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    const-string v6, " , "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_3
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sea_monster/dao/FuncProperty;

    invoke-virtual {v6}, Lcom/sea_monster/dao/FuncProperty;->getColumn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 344
    .end local v4    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/FuncProperty;>;"
    :cond_4
    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v6}, Lcom/sea_monster/dao/AbstractDeepDao;->getDeepJoinString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelectRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 354
    invoke-direct {p0, v1, p1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->appendGroupClause(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 356
    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 357
    const-string v6, " ORDER BY "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 360
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "sql":Ljava/lang/String;
    sget-boolean v6, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_SQL:Z

    if-eqz v6, :cond_6

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Built SQL for delete query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 369
    :cond_6
    sget-boolean v6, Lcom/sea_monster/dao/query/DeepQueryBuilder;->LOG_VALUES:Z

    if-eqz v6, :cond_7

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Values for delete query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 373
    :cond_7
    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    iget-object v7, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->values:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sea_monster/dao/query/GroupQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v6

    return-object v6
.end method

.method protected checkProperty(Lcom/sea_monster/dao/Property;)V
    .locals 9
    .param p1, "property"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 214
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    if-eqz v6, :cond_2

    .line 215
    iget-object v6, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v6}, Lcom/sea_monster/dao/AbstractDeepDao;->getProperties()[Lcom/sea_monster/dao/Property;

    move-result-object v4

    .line 216
    .local v4, "properties":[Lcom/sea_monster/dao/Property;
    const/4 v1, 0x0

    .line 217
    .local v1, "found":Z
    move-object v0, v4

    .local v0, "arr$":[Lcom/sea_monster/dao/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 218
    .local v5, "property2":Lcom/sea_monster/dao/Property;
    if-ne p1, v5, :cond_1

    .line 219
    const/4 v1, 0x1

    .line 223
    .end local v5    # "property2":Lcom/sea_monster/dao/Property;
    :cond_0
    if-nez v1, :cond_2

    .line 224
    new-instance v6, Lcom/sea_monster/dao/DaoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/sea_monster/dao/Property;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not part of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    .restart local v5    # "property2":Lcom/sea_monster/dao/Property;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "arr$":[Lcom/sea_monster/dao/Property;
    .end local v1    # "found":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "properties":[Lcom/sea_monster/dao/Property;
    .end local v5    # "property2":Lcom/sea_monster/dao/Property;
    :cond_2
    return-void
.end method

.method protected varargs combineWhereConditions(Ljava/lang/String;Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 9
    .param p1, "combineOp"    # Ljava/lang/String;
    .param p2, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p4, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 114
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "combinedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2, p2}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0, v1, v2, p3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 121
    move-object v0, p4

    .local v0, "arr$":[Lcom/sea_monster/dao/query/WhereCondition;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 122
    .local v3, "cond":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0, v1, v2, v3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "cond":Lcom/sea_monster/dao/query/WhereCondition;
    :cond_0
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    new-instance v6, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public count()J
    .locals 2

    .prologue
    .line 503
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->buildCount()Lcom/sea_monster/dao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/CountQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public join(Ljava/lang/Class;Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p2, "toOneProperty"    # Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public joinToMany(Ljava/lang/Class;Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p2, "toManyProperty"    # Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public limit(I)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->limit:Ljava/lang/Integer;

    .line 235
    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lcom/sea_monster/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->listLazy()Lcom/sea_monster/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public listLazyUncached()Lcom/sea_monster/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->listLazyUncached()Lcom/sea_monster/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public offset(I)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->offset:Ljava/lang/Integer;

    .line 246
    return-object p0
.end method

.method public varargs or(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 97
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    const-string v0, " OR "

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->combineWhereConditions(Ljava/lang/String;Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAsc([Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    const-string v0, " ASC"

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V

    .line 162
    return-object p0
.end method

.method public orderCustom(Lcom/sea_monster/dao/Property;Ljava/lang/String;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 2
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-direct {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->checkOrderBuilder()V

    .line 192
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    return-object p0
.end method

.method public varargs orderDesc([Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    const-string v0, " DESC"

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V

    .line 170
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .param p1, "rawOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-direct {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->checkOrderBuilder()V

    .line 203
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    return-object p0
.end method

.method public unique()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->unique()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->build()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery;->uniqueOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 5
    .param p1, "cond"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            "[",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    move-object v0, p2

    .local v0, "arr$":[Lcom/sea_monster/dao/query/WhereCondition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 73
    .local v3, "whereCondition":Lcom/sea_monster/dao/query/WhereCondition;
    iget-object v4, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "whereCondition":Lcom/sea_monster/dao/query/WhereCondition;
    :cond_0
    return-object p0
.end method

.method public varargs whereOr(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 2
    .param p1, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            "[",
            "Lcom/sea_monster/dao/query/WhereCondition;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQueryBuilder;, "Lcom/sea_monster/dao/query/DeepQueryBuilder<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQueryBuilder;->whereConditions:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->or(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object p0
.end method
