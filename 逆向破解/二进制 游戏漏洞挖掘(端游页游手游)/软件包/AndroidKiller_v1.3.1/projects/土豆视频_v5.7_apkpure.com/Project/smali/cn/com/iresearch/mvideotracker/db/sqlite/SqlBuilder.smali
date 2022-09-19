.class public Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;
.super Ljava/lang/Object;
.source "SqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 6
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v3

    .line 111
    .local v3, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v0

    .line 113
    .local v0, "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    if-nez p1, :cond_0

    .line 114
    new-instance v4, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    const-string v5, "getDeleteSQL:idValue is null"

    invoke-direct {v4, v5}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "strSQL":Ljava/lang/StringBuffer;
    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v1, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 122
    .local v1, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 125
    return-object v1
.end method

.method public static buildDeleteSql(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 8
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v4

    .line 91
    .local v4, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v0

    .line 92
    .local v0, "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "idvalue":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 95
    new-instance v5, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeleteSQL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 96
    const-string v7, " id value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-direct {v5, v6}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "strSQL":Ljava/lang/StringBuffer;
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    new-instance v2, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 103
    .local v2, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 106
    return-object v2
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v1

    .line 130
    .local v1, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 9
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 23
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v5, "strSQL":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 25
    .local v4, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 27
    new-instance v4, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    .end local v4    # "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    invoke-direct {v4}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 29
    .restart local v4    # "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 37
    const-string v6, ") VALUES ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 40
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 44
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 49
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_0
    return-object v4

    .line 32
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .line 33
    .local v2, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const-string v6, "?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v7

    .line 284
    .local v7, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-virtual {v7}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v0

    .line 285
    .local v0, "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v6, "strSQL":Ljava/lang/StringBuffer;
    const-string v8, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v7}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v8, " ( "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getDataType()Ljava/lang/Class;

    move-result-object v3

    .line 291
    .local v3, "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v8, :cond_0

    const-class v8, Ljava/lang/Integer;

    if-ne v3, v8, :cond_1

    .line 292
    :cond_0
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\"    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 293
    const-string v9, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :goto_0
    iget-object v8, v7, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 299
    .local v5, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 304
    iget-object v8, v7, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 305
    .local v2, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 308
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 309
    const-string v8, " )"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 295
    .end local v2    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    .end local v5    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    :cond_1
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\"    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 296
    const-string v9, "TEXT PRIMARY KEY,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    .restart local v5    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/iresearch/mvideotracker/db/table/Property;

    .line 300
    .local v4, "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v9, "\","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 305
    .end local v4    # "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    .restart local v2    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 306
    .local v1, "manyToOne":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 320
    .local v0, "sbSQL":Ljava/lang/StringBuffer;
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 321
    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mvideotracker/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v7

    .line 58
    .local v7, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-virtual {v7}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "idvalue":Ljava/lang/Object;
    instance-of v8, v0, Ljava/lang/Integer;

    if-nez v8, :cond_0

    .line 61
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 62
    new-instance v2, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    invoke-virtual {v7}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v8

    invoke-virtual {v8}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .local v2, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    :cond_0
    iget-object v8, v7, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 68
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 74
    iget-object v8, v7, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 75
    .local v4, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 81
    return-object v1

    .line 68
    .end local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/iresearch/mvideotracker/db/table/Property;

    .line 69
    .local v5, "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    invoke-static {v5, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->property2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/Property;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v2

    .line 70
    .restart local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .end local v5    # "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    .restart local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 76
    .local v3, "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    invoke-static {v3, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v2

    .line 77
    .restart local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v1

    .line 148
    .local v1, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v1

    .line 177
    .local v1, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "strSQL":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 5
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v2

    .line 159
    .local v2, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "strSQL":Ljava/lang/StringBuffer;
    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 164
    .local v0, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 167
    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 13
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v9

    .line 193
    .local v9, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-virtual {v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "idvalue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 196
    new-instance v10, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "this entity["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 197
    const-string v12, "]\'s id value is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    invoke-direct {v10, v11}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 200
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    iget-object v10, v9, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 203
    .local v6, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 209
    iget-object v10, v9, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 210
    .local v4, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 216
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 217
    :cond_3
    const/4 v7, 0x0

    .line 231
    :goto_2
    return-object v7

    .line 203
    .end local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/iresearch/mvideotracker/db/table/Property;

    .line 204
    .local v5, "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    invoke-static {v5, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->property2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/Property;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v2

    .line 205
    .local v2, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .end local v5    # "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    .restart local v4    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 211
    .local v3, "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    invoke-static {v3, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v2

    .line 212
    .restart local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .end local v3    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    :cond_6
    new-instance v7, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    invoke-direct {v7}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 220
    .local v7, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, "UPDATE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v8, "strSQL":Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v10, " SET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 227
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 228
    const-string v10, " WHERE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v11

    invoke-virtual {v11}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v7, v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    goto :goto_2

    .line 223
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .line 224
    .restart local v2    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "=?,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    .locals 12
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "strWhere"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v8

    .line 238
    .local v8, "table":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    iget-object v9, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 241
    .local v5, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 247
    iget-object v9, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 248
    .local v3, "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 254
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 255
    :cond_2
    new-instance v9, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "this entity["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 256
    const-string v11, "] has no property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 255
    invoke-direct {v9, v10}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 241
    .end local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/iresearch/mvideotracker/db/table/Property;

    .line 242
    .local v4, "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    invoke-static {v4, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->property2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/Property;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v1

    .line 243
    .local v1, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v1    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .end local v4    # "property":Lcn/com/iresearch/mvideotracker/db/table/Property;
    .restart local v3    # "manyToOnes":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 249
    .local v2, "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    invoke-static {v2, p0}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    move-result-object v1

    .line 250
    .restart local v1    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    .end local v1    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .end local v2    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    :cond_5
    new-instance v6, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    invoke-direct {v6}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;-><init>()V

    .line 260
    .local v6, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "UPDATE "

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 261
    .local v7, "strSQL":Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 267
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 269
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 272
    return-object v6

    .line 263
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .line 264
    .restart local v1    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static manyToOne2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .locals 5
    .param p0, "many"    # Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "manycolumn":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, "manyobject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v4

    .line 349
    invoke-virtual {v4, v2}, Lcn/com/iresearch/mvideotracker/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 350
    .local v3, "manyvalue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 351
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .end local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-direct {v0, v1, v3}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    .end local v3    # "manyvalue":Ljava/lang/Object;
    .restart local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    :cond_0
    return-object v0
.end method

.method private static property2KeyValue(Lcn/com/iresearch/mvideotracker/db/table/Property;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    .locals 4
    .param p0, "property"    # Lcn/com/iresearch/mvideotracker/db/table/Property;
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "pcolumn":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 333
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 334
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .end local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-direct {v0, v1, v2}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    .restart local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .end local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    goto :goto_0
.end method
