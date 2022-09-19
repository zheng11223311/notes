.class public Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# static fields
.field private static final tableInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mvideotracker/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkDatabese:Z

.field private className:Ljava/lang/String;

.field private id:Lcn/com/iresearch/mvideotracker/db/table/Id;

.field public final manyToOneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;",
            ">;"
        }
    .end annotation
.end field

.field public final oneToManyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mvideotracker/db/table/OneToMany;",
            ">;"
        }
    .end annotation
.end field

.field public final propertyMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mvideotracker/db/table/Property;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcn/com/iresearch/mvideotracker/db/table/TableInfo;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 35
    new-instance v9, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    .line 36
    const-string/jumbo v10, "table info get error,because the clazz is null"

    .line 35
    invoke-direct {v9, v10}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 38
    :cond_0
    sget-object v9, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    .line 39
    .local v8, "tableInfo":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    if-nez v8, :cond_7

    .line 40
    new-instance v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    .end local v8    # "tableInfo":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-direct {v8}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;-><init>()V

    .line 42
    .restart local v8    # "tableInfo":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/reflect/ClassUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->setTableName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->setClassName(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/reflect/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    .local v1, "idField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_8

    .line 48
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/table/Id;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/table/Id;-><init>()V

    .line 49
    .local v0, "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    invoke-static {v1}, Lcn/com/iresearch/mvideotracker/db/reflect/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setColumn(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setFieldName(Ljava/lang/String;)V

    .line 51
    invoke-static {p0, v1}, Lcn/com/iresearch/mvideotracker/db/reflect/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setSet(Ljava/lang/reflect/Method;)V

    .line 52
    invoke-static {p0, v1}, Lcn/com/iresearch/mvideotracker/db/reflect/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setGet(Ljava/lang/reflect/Method;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setDataType(Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v8, v0}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->setId(Lcn/com/iresearch/mvideotracker/db/table/Id;)V

    .line 61
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/reflect/ClassUtils;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 62
    .local v7, "pList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    if-eqz v7, :cond_2

    .line 63
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 69
    :cond_2
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/reflect/ClassUtils;->getManyToOneList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 70
    .local v3, "mList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    if-eqz v3, :cond_4

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 77
    :cond_4
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/reflect/ClassUtils;->getOneToManyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "oList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    if-eqz v5, :cond_6

    .line 79
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 85
    :cond_6
    sget-object v9, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v0    # "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    .end local v1    # "idField":Ljava/lang/reflect/Field;
    .end local v3    # "mList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    .end local v5    # "oList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    :cond_7
    if-nez v8, :cond_c

    .line 89
    new-instance v9, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "the class["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]\'s table is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 57
    .restart local v1    # "idField":Ljava/lang/reflect/Field;
    :cond_8
    new-instance v9, Lcn/com/iresearch/mvideotracker/db/exception/DbException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "the class["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 58
    const-string v11, "]\'s idField is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    invoke-direct {v9, v10}, Lcn/com/iresearch/mvideotracker/db/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 63
    .restart local v0    # "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    .restart local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/com/iresearch/mvideotracker/db/table/Property;

    .line 64
    .local v6, "p":Lcn/com/iresearch/mvideotracker/db/table/Property;
    if-eqz v6, :cond_1

    .line 65
    iget-object v10, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->propertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Lcn/com/iresearch/mvideotracker/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v6    # "p":Lcn/com/iresearch/mvideotracker/db/table/Property;
    .restart local v3    # "mList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 72
    .local v2, "m":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    if-eqz v2, :cond_3

    .line 73
    iget-object v10, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    .end local v2    # "m":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .restart local v5    # "oList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;

    .line 80
    .local v4, "o":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    if-eqz v4, :cond_5

    .line 81
    iget-object v10, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 91
    .end local v0    # "id":Lcn/com/iresearch/mvideotracker/db/table/Id;
    .end local v1    # "idField":Ljava/lang/reflect/Field;
    .end local v3    # "mList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    .end local v4    # "o":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    .end local v5    # "oList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/Property;>;"
    :cond_c
    return-object v8
.end method

.method public static get(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcn/com/iresearch/mvideotracker/db/table/Id;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->id:Lcn/com/iresearch/mvideotracker/db/table/Id;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckDatabese()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->checkDatabese:Z

    return v0
.end method

.method public setCheckDatabese(Z)V
    .locals 0
    .param p1, "checkDatabese"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->checkDatabese:Z

    .line 133
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->className:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(Lcn/com/iresearch/mvideotracker/db/table/Id;)V
    .locals 0
    .param p1, "id"    # Lcn/com/iresearch/mvideotracker/db/table/Id;

    .prologue
    .line 124
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->id:Lcn/com/iresearch/mvideotracker/db/table/Id;

    .line 125
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->tableName:Ljava/lang/String;

    .line 117
    return-void
.end method
