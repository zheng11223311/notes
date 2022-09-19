.class public Lcn/com/iresearch/mapptracker/dao/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/d/a;
    .locals 7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcn/com/iresearch/mapptracker/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcn/com/iresearch/mapptracker/a/d/a;

    invoke-direct {v1}, Lcn/com/iresearch/mapptracker/a/d/a;-><init>()V

    const-string v0, "INSERT INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ") VALUES ( "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/com/iresearch/mapptracker/a/d/a;->a(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    return-object v0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->property2KeyValue(Lcn/com/iresearch/mapptracker/a/e/e;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->manyToOne2KeyValue(Lcn/com/iresearch/mapptracker/a/e/c;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/com/iresearch/mapptracker/a/d/a;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->e()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    :cond_0
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\"    INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\"    TEXT PRIMARY KEY,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v3, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    if-eqz v0, :cond_2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getManyToOneList(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mapptracker/a/e/c;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/a/c/a;->c(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/a/c/a;->d(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcn/com/iresearch/mapptracker/a/e/c;

    invoke-direct {v5}, Lcn/com/iresearch/mapptracker/a/e/c;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/c;->a()V

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/com/iresearch/mapptracker/a/e/c;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/c;->b()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/com/iresearch/mapptracker/a/e/c;->a(Ljava/lang/Class;)V

    invoke-static {p0, v4}, Lcn/com/iresearch/mapptracker/a/c/a;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/com/iresearch/mapptracker/a/e/c;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v4}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcn/com/iresearch/mapptracker/a/e/c;->a(Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getOneToManyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mapptracker/a/e/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v1

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->c(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->e(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lcn/com/iresearch/mapptracker/a/e/d;

    invoke-direct {v6}, Lcn/com/iresearch/mapptracker/a/e/d;-><init>()V

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/com/iresearch/mapptracker/a/e/d;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/d;->b()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/d;->a()V

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/com/iresearch/mapptracker/a/e/d;->a(Ljava/lang/Class;)V

    invoke-static {p0, v5}, Lcn/com/iresearch/mapptracker/a/c/a;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/com/iresearch/mapptracker/a/e/d;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v5}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/com/iresearch/mapptracker/a/e/d;->a(Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcn/com/iresearch/mapptracker/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOneToManyList Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s type is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v5, v4

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_4

    move-object v2, v1

    :cond_0
    if-nez v2, :cond_1

    array-length v5, v4

    move v3, v0

    :goto_1
    if-lt v3, v5, :cond_5

    :cond_1
    move-object v1, v2

    :cond_2
    if-nez v1, :cond_8

    array-length v3, v4

    move v2, v0

    :goto_2
    if-lt v2, v3, :cond_6

    move-object v0, v1

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    aget-object v2, v4, v3

    const-class v6, Lcn/com/iresearch/mapptracker/a/a/a/a;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    aget-object v1, v4, v3

    const-string v6, "_id"

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    aget-object v0, v4, v2

    const-string v5, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this model["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPropertyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mapptracker/a/e/e;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v1

    :cond_0
    aget-object v5, v2, v0

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->c(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->f(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcn/com/iresearch/mapptracker/a/e/e;

    invoke-direct {v6}, Lcn/com/iresearch/mapptracker/a/e/e;-><init>()V

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/e;->b()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/Class;)V

    invoke-static {v5}, Lcn/com/iresearch/mapptracker/a/c/a;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mapptracker/a/e/e;->b(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcn/com/iresearch/mapptracker/a/c/a;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mapptracker/a/e/e;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v5}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/reflect/Method;)V

    invoke-virtual {v6, v5}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/reflect/Field;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mapptracker/a/e/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcn/com/iresearch/mapptracker/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->property2KeyValue(Lcn/com/iresearch/mapptracker/a/e/e;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->manyToOne2KeyValue(Lcn/com/iresearch/mapptracker/a/e/c;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/dao/a;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/dao/a;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcn/com/iresearch/mapptracker/a/a/a/e;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/com/iresearch/mapptracker/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcn/com/iresearch/mapptracker/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/a/d/a;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcn/com/iresearch/mapptracker/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->property2KeyValue(Lcn/com/iresearch/mapptracker/a/e/e;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    invoke-static {v0, p0}, Lcn/com/iresearch/mapptracker/dao/a;->manyToOne2KeyValue(Lcn/com/iresearch/mapptracker/a/e/c;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Lcn/com/iresearch/mapptracker/a/d/a;

    invoke-direct {v3}, Lcn/com/iresearch/mapptracker/a/d/a;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "UPDATE "

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/com/iresearch/mapptracker/a/d/a;->a(Ljava/lang/String;)V

    return-object v3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "=?,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/com/iresearch/mapptracker/a/d/a;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static manyToOne2KeyValue(Lcn/com/iresearch/mapptracker/a/e/c;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/e/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/a/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-direct {v0, v1, v2}, Lcn/com/iresearch/mapptracker/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static property2KeyValue(Lcn/com/iresearch/mapptracker/a/e/e;Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/e/b;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/e/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcn/com/iresearch/mapptracker/a/e/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-direct {v0, v1, v2}, Lcn/com/iresearch/mapptracker/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/e/e;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/e/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/a/e/b;

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/e/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/com/iresearch/mapptracker/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
