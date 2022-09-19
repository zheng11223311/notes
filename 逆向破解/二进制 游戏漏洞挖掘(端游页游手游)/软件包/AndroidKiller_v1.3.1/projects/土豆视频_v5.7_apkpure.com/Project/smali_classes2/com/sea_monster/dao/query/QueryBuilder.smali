.class public Lcom/sea_monster/dao/query/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


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
.field private final dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private joinBuilder:Ljava/lang/StringBuilder;

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private orderBuilder:Ljava/lang/StringBuilder;

.field private final updateValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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
.method protected constructor <init>(Lcom/sea_monster/dao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->updateValues:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    .line 87
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
    .line 507
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 508
    const-string v2, " GROUP BY "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 510
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/Property;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const-string v2, " , "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/Property;

    .line 515
    .local v1, "property":Lcom/sea_monster/dao/Property;
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->asName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/sea_monster/dao/internal/SqlUtils;->appendColumn(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :cond_1
    iget-object v2, v1, Lcom/sea_monster/dao/Property;->asName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sea_monster/dao/internal/SqlUtils;->appendColumn(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 522
    .end local v0    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/Property;>;"
    .end local v1    # "property":Lcom/sea_monster/dao/Property;
    :cond_2
    return-void
.end method

.method private varargs appendUpdateClause(Ljava/lang/StringBuilder;Ljava/lang/String;[Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;)V
    .locals 9
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tablePrefixOrNull"    # Ljava/lang/String;
    .param p3, "conditions"    # [Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;

    .prologue
    .line 525
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v7, p0, Lcom/sea_monster/dao/query/QueryBuilder;->updateValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v2, "conditionList":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;>;"
    move-object v0, p3

    .local v0, "arr$":[Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 529
    .local v4, "item":Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    .end local v4    # "item":Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 533
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 534
    .local v5, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 535
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    const-string v7, " , "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/WhereCondition;

    .line 539
    .local v1, "condition":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-interface {v1, p1}, Lcom/sea_monster/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;)V

    .line 540
    iget-object v7, p0, Lcom/sea_monster/dao/query/QueryBuilder;->updateValues:Ljava/util/List;

    invoke-interface {v1, v7}, Lcom/sea_monster/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_1

    .line 543
    .end local v1    # "condition":Lcom/sea_monster/dao/query/WhereCondition;
    .end local v5    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;>;"
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "No property to update"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 545
    .restart local v5    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;>;"
    :cond_3
    return-void
.end method

.method private appendWhereClause(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 491
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v2, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 492
    iget-object v2, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v2, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 495
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    const-string v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/WhereCondition;

    .line 500
    .local v0, "condition":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-interface {v0, p1}, Lcom/sea_monster/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;)V

    .line 501
    iget-object v2, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/sea_monster/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    .line 504
    .end local v0    # "condition":Lcom/sea_monster/dao/query/WhereCondition;
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/query/WhereCondition;>;"
    :cond_1
    return-void
.end method

.method private checkOrderBuilder()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static internalCreate(Lcom/sea_monster/dao/AbstractDao;)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT2;*>;)",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/QueryBuilder;

    invoke-direct {v0, p0}, Lcom/sea_monster/dao/query/QueryBuilder;-><init>(Lcom/sea_monster/dao/AbstractDao;)V

    return-object v0
.end method

.method private varargs orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V
    .locals 6
    .param p1, "ascOrDescWithLeadingSpace"    # Ljava/lang/String;
    .param p2, "properties"    # [Lcom/sea_monster/dao/Property;

    .prologue
    .line 201
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    move-object v0, p2

    .local v0, "arr$":[Lcom/sea_monster/dao/Property;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 202
    .local v3, "property":Lcom/sea_monster/dao/Property;
    invoke-direct {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 203
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Lcom/sea_monster/dao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;

    .line 204
    const-class v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v5, " COLLATE LOCALIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
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
    .line 155
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lcom/sea_monster/dao/query/QueryBuilder;->checkCondition(Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 156
    invoke-interface {p3, p1}, Lcom/sea_monster/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;)V

    .line 157
    invoke-interface {p3, p2}, Lcom/sea_monster/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 158
    return-void
.end method

.method public varargs and(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 134
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    const-string v0, " AND "

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method protected append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "property"    # Lcom/sea_monster/dao/Property;

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    const/16 v2, 0x27

    .line 232
    invoke-virtual {p0, p2}, Lcom/sea_monster/dao/query/QueryBuilder;->checkProperty(Lcom/sea_monster/dao/Property;)V

    .line 233
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

    .line 234
    return-object p1
.end method

.method public build()Lcom/sea_monster/dao/query/Query;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->joinBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->joinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-static {v5}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->getStatements(Lcom/sea_monster/dao/AbstractDao;)Lcom/sea_monster/dao/internal/TableStatements;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "select":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 285
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 286
    const-string v5, " ORDER BY "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    const/4 v1, -0x1

    .line 290
    .local v1, "limitPosition":I
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 291
    const-string v5, " LIMIT ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 296
    :cond_2
    const/4 v2, -0x1

    .line 297
    .local v2, "offsetPosition":I
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 298
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-nez v5, :cond_4

    .line 299
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Offset cannot be set without limit"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 279
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "limitPosition":I
    .end local v2    # "offsetPosition":I
    .end local v3    # "select":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v5}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v6}, Lcom/sea_monster/dao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "select":Ljava/lang/String;
    goto :goto_0

    .line 301
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "limitPosition":I
    .restart local v2    # "offsetPosition":I
    :cond_4
    const-string v5, " OFFSET ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 306
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "sql":Ljava/lang/String;
    sget-boolean v5, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v5, :cond_6

    .line 308
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

    .line 311
    :cond_6
    sget-boolean v5, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v5, :cond_7

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Values for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 315
    :cond_7
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6, v1, v2}, Lcom/sea_monster/dao/query/Query;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/Query;

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
    .line 457
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v4}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "tablename":Ljava/lang/String;
    invoke-static {v3}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 464
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

    .line 466
    :cond_0
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sea_monster/dao/query/CountQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/CountQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildDelete()Lcom/sea_monster/dao/query/DeleteQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v4}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "tablename":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built SQL for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 412
    :cond_0
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sea_monster/dao/query/DeleteQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/DeleteQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildFunc(Lcom/sea_monster/dao/FuncProperty;)Lcom/sea_monster/dao/query/FuncQuery;
    .locals 6
    .param p1, "funcProperty"    # Lcom/sea_monster/dao/FuncProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/FuncProperty;",
            ")",
            "Lcom/sea_monster/dao/query/FuncQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v4}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "tablename":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sea_monster/dao/FuncProperty;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelectRaw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 481
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

    .line 483
    :cond_0
    sget-boolean v4, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 487
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sea_monster/dao/query/FuncQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/FuncQuery;

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
    .line 325
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p2, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p0, v0, p2}, Lcom/sea_monster/dao/query/QueryBuilder;->buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;

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
    .line 333
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    if-eqz p2, :cond_0

    .line 335
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/query/QueryBuilder;->buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v1

    return-object v1
.end method

.method public buildGroup(Ljava/util/List;Ljava/util/List;)Lcom/sea_monster/dao/query/GroupQuery;
    .locals 13
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
    .line 341
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/Property;>;"
    .local p2, "funcProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/dao/FuncProperty;>;"
    iget-object v11, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v11}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "tablename":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    new-array v2, v11, [Ljava/lang/String;

    .line 344
    .local v2, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 345
    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sea_monster/dao/Property;

    .line 346
    .local v7, "item":Lcom/sea_monster/dao/Property;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    iget-object v11, v7, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    aput-object v11, v2, v4

    move v4, v5

    .line 347
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 349
    .end local v7    # "item":Lcom/sea_monster/dao/Property;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v3, "funcBuilder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 352
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 353
    .local v8, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/FuncProperty;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 354
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 355
    const-string v11, " , "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sea_monster/dao/FuncProperty;

    invoke-virtual {v11}, Lcom/sea_monster/dao/FuncProperty;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    .end local v8    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sea_monster/dao/FuncProperty;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v2, v11}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 368
    invoke-direct {p0, v1, p1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendGroupClause(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 370
    iget-object v11, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 371
    const-string v11, " ORDER BY "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 374
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, "sql":Ljava/lang/String;
    sget-boolean v11, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v11, :cond_4

    .line 381
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Built SQL for delete query: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 383
    :cond_4
    sget-boolean v11, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v11, :cond_5

    .line 384
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Values for delete query: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 387
    :cond_5
    iget-object v11, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v12, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v9, v12}, Lcom/sea_monster/dao/query/GroupQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v11

    return-object v11
.end method

.method public varargs buildUpdate([Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;)Lcom/sea_monster/dao/query/UpdateQuery;
    .locals 7
    .param p1, "conditions"    # [Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;",
            ")",
            "Lcom/sea_monster/dao/query/UpdateQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v5}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "tablename":Ljava/lang/String;
    invoke-static {v3}, Lcom/sea_monster/dao/internal/SqlUtils;->createSqlUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v4, "updateBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendUpdateClause(Ljava/lang/StringBuilder;Ljava/lang/String;[Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p0, v1}, Lcom/sea_monster/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;)V

    .line 436
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v5, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v5, :cond_0

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Built SQL for delete query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 445
    :cond_0
    sget-boolean v5, Lcom/sea_monster/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v5, :cond_1

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Values for delete query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 448
    :cond_1
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->updateValues:Ljava/util/List;

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v5, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->updateValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/sea_monster/dao/query/UpdateQuery;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/UpdateQuery;

    move-result-object v5

    return-object v5
.end method

.method protected checkCondition(Lcom/sea_monster/dao/query/WhereCondition;)V
    .locals 1
    .param p1, "whereCondition"    # Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 161
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    instance-of v0, p1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    .end local p1    # "whereCondition":Lcom/sea_monster/dao/query/WhereCondition;
    iget-object v0, p1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;->property:Lcom/sea_monster/dao/Property;

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/query/QueryBuilder;->checkProperty(Lcom/sea_monster/dao/Property;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected checkProperty(Lcom/sea_monster/dao/Property;)V
    .locals 9
    .param p1, "property"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 238
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    if-eqz v6, :cond_2

    .line 239
    iget-object v6, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v6}, Lcom/sea_monster/dao/AbstractDao;->getProperties()[Lcom/sea_monster/dao/Property;

    move-result-object v4

    .line 240
    .local v4, "properties":[Lcom/sea_monster/dao/Property;
    const/4 v1, 0x0

    .line 241
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

    .line 242
    .local v5, "property2":Lcom/sea_monster/dao/Property;
    if-ne p1, v5, :cond_1

    .line 243
    const/4 v1, 0x1

    .line 247
    .end local v5    # "property2":Lcom/sea_monster/dao/Property;
    :cond_0
    if-nez v1, :cond_2

    .line 248
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

    iget-object v8, p0, Lcom/sea_monster/dao/query/QueryBuilder;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 241
    .restart local v5    # "property2":Lcom/sea_monster/dao/Property;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
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
    .line 139
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "combinedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2, p2}, Lcom/sea_monster/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0, v1, v2, p3}, Lcom/sea_monster/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 146
    move-object v0, p4

    .local v0, "arr$":[Lcom/sea_monster/dao/query/WhereCondition;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 147
    .local v3, "cond":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lcom/sea_monster/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "cond":Lcom/sea_monster/dao/query/WhereCondition;
    :cond_0
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
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
    .line 607
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->buildCount()Lcom/sea_monster/dao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/CountQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public join(Ljava/lang/Class;Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/QueryBuilder;
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
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public joinToMany(Ljava/lang/Class;Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/QueryBuilder;
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
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public limit(I)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 258
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
    .line 553
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->list()Ljava/util/List;

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
    .line 580
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;

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
    .line 562
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->listLazy()Lcom/sea_monster/dao/query/LazyList;

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
    .line 571
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->listLazyUncached()Lcom/sea_monster/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public offset(I)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 267
    return-object p0
.end method

.method public varargs or(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p2, "cond2"    # Lcom/sea_monster/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lcom/sea_monster/dao/query/WhereCondition;

    .prologue
    .line 125
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    const-string v0, " OR "

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAsc([Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    const-string v0, " ASC"

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V

    .line 189
    return-object p0
.end method

.method public orderCustom(Lcom/sea_monster/dao/Property;Ljava/lang/String;)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 2
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 216
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lcom/sea_monster/dao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lcom/sea_monster/dao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    return-object p0
.end method

.method public varargs orderDesc([Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lcom/sea_monster/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sea_monster/dao/Property;",
            ")",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    const-string v0, " DESC"

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lcom/sea_monster/dao/Property;)V

    .line 197
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .param p1, "rawOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 227
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
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
    .line 589
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->unique()Ljava/lang/Object;

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
    .line 598
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->build()Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query;->uniqueOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/QueryBuilder;
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
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move-object v0, p2

    .local v0, "arr$":[Lcom/sea_monster/dao/query/WhereCondition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 104
    .local v3, "whereCondition":Lcom/sea_monster/dao/query/WhereCondition;
    invoke-virtual {p0, v3}, Lcom/sea_monster/dao/query/QueryBuilder;->checkCondition(Lcom/sea_monster/dao/query/WhereCondition;)V

    .line 105
    iget-object v4, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "whereCondition":Lcom/sea_monster/dao/query/WhereCondition;
    :cond_0
    return-object p0
.end method

.method public varargs whereOr(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/QueryBuilder;
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
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/sea_monster/dao/query/QueryBuilder;, "Lcom/sea_monster/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sea_monster/dao/query/QueryBuilder;->or(Lcom/sea_monster/dao/query/WhereCondition;Lcom/sea_monster/dao/query/WhereCondition;[Lcom/sea_monster/dao/query/WhereCondition;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method
