.class public final Lcom/sea_monster/dao/internal/DaoConfig;
.super Ljava/lang/Object;
.source "DaoConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final allColumns:[Ljava/lang/String;

.field public final db:Landroid/database/sqlite/SQLiteDatabase;

.field private identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation
.end field

.field public final keyIsNumeric:Z

.field public final nonPkColumns:[Ljava/lang/String;

.field public final pkColumns:[Ljava/lang/String;

.field public final pkProperty:Lcom/sea_monster/dao/Property;

.field public final properties:[Lcom/sea_monster/dao/Property;

.field public final statements:Lcom/sea_monster/dao/internal/TableStatements;

.field public final tablename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sea_monster/dao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sea_monster/dao/AbstractDao<**>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sea_monster/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    :try_start_0
    const-string v13, "TABLENAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 58
    invoke-static/range {p2 .. p2}, Lcom/sea_monster/dao/internal/DaoConfig;->reflectProperties(Ljava/lang/Class;)[Lcom/sea_monster/dao/Property;

    move-result-object v10

    .line 59
    .local v10, "properties":[Lcom/sea_monster/dao/Property;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sea_monster/dao/internal/DaoConfig;->properties:[Lcom/sea_monster/dao/Property;

    .line 61
    array-length v13, v10

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v8, "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v6, "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 66
    .local v4, "lastPkProperty":Lcom/sea_monster/dao/Property;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v13, v10

    if-ge v3, v13, :cond_1

    .line 67
    aget-object v11, v10, v3

    .line 68
    .local v11, "property":Lcom/sea_monster/dao/Property;
    iget-object v5, v11, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    .line 69
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    aput-object v5, v13, v3

    .line 70
    iget-boolean v13, v11, Lcom/sea_monster/dao/Property;->primaryKey:Z

    if-eqz v13, :cond_0

    .line 71
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    move-object v4, v11

    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v3    # "i":I
    .end local v4    # "lastPkProperty":Lcom/sea_monster/dao/Property;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "properties":[Lcom/sea_monster/dao/Property;
    .end local v11    # "property":Lcom/sea_monster/dao/Property;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v13, Lcom/sea_monster/dao/DaoException;

    const-string v14, "Could not init DAOConfig"

    invoke-direct {v13, v14, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "lastPkProperty":Lcom/sea_monster/dao/Property;
    .restart local v6    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "properties":[Lcom/sea_monster/dao/Property;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 78
    .local v7, "nonPkColumnsArray":[Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 79
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    new-array v9, v13, [Ljava/lang/String;

    .line 80
    .local v9, "pkColumnsArray":[Ljava/lang/String;
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    array-length v13, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .end local v4    # "lastPkProperty":Lcom/sea_monster/dao/Property;
    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    .line 83
    new-instance v13, Lcom/sea_monster/dao/internal/TableStatements;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v14, v15, v1}, Lcom/sea_monster/dao/internal/TableStatements;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    if-eqz v13, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    iget-object v12, v13, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    .line 87
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Short;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Byte;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->keyIsNumeric:Z

    .line 97
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    return-void

    .line 82
    .restart local v4    # "lastPkProperty":Lcom/sea_monster/dao/Property;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 87
    .end local v4    # "lastPkProperty":Lcom/sea_monster/dao/Property;
    .restart local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 91
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sea_monster/dao/internal/DaoConfig;->keyIsNumeric:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public constructor <init>(Lcom/sea_monster/dao/internal/DaoConfig;)V
    .locals 1
    .param p1, "source"    # Lcom/sea_monster/dao/internal/DaoConfig;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->properties:[Lcom/sea_monster/dao/Property;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->properties:[Lcom/sea_monster/dao/Property;

    .line 131
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    .line 135
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    .line 136
    iget-boolean v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->keyIsNumeric:Z

    iput-boolean v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->keyIsNumeric:Z

    .line 137
    return-void
.end method

.method private static reflectProperties(Ljava/lang/Class;)[Lcom/sea_monster/dao/Property;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sea_monster/dao/AbstractDao",
            "<**>;>;)[",
            "Lcom/sea_monster/dao/Property;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sea_monster/dao/AbstractDao<**>;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$Properties"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 102
    .local v8, "propertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 104
    .local v3, "fields":[Ljava/lang/reflect/Field;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v10, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sea_monster/dao/Property;>;"
    const/16 v6, 0x9

    .line 106
    .local v6, "modifierMask":I
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 108
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    and-int/lit8 v11, v11, 0x9

    const/16 v12, 0x9

    if-ne v11, v12, :cond_0

    .line 109
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "fieldValue":Ljava/lang/Object;
    instance-of v11, v2, Lcom/sea_monster/dao/Property;

    if-eqz v11, :cond_0

    .line 111
    check-cast v2, Lcom/sea_monster/dao/Property;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v7, v11, [Lcom/sea_monster/dao/Property;

    .line 117
    .local v7, "properties":[Lcom/sea_monster/dao/Property;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sea_monster/dao/Property;

    .line 118
    .local v9, "property":Lcom/sea_monster/dao/Property;
    iget v11, v9, Lcom/sea_monster/dao/Property;->ordinal:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_2

    .line 119
    new-instance v11, Lcom/sea_monster/dao/DaoException;

    const-string v12, "Duplicate property ordinals"

    invoke-direct {v11, v12}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 121
    :cond_2
    iget v11, v9, Lcom/sea_monster/dao/Property;->ordinal:I

    aput-object v9, v7, v11

    goto :goto_1

    .line 123
    .end local v9    # "property":Lcom/sea_monster/dao/Property;
    :cond_3
    return-object v7
.end method


# virtual methods
.method public clone()Lcom/sea_monster/dao/internal/DaoConfig;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/sea_monster/dao/internal/DaoConfig;

    invoke-direct {v0, p0}, Lcom/sea_monster/dao/internal/DaoConfig;-><init>(Lcom/sea_monster/dao/internal/DaoConfig;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/sea_monster/dao/internal/DaoConfig;->clone()Lcom/sea_monster/dao/internal/DaoConfig;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityScope()Lcom/sea_monster/dao/identityscope/IdentityScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    return-object v0
.end method

.method public initIdentityScope(Lcom/sea_monster/dao/identityscope/IdentityScopeType;)V
    .locals 3
    .param p1, "type"    # Lcom/sea_monster/dao/identityscope/IdentityScopeType;

    .prologue
    .line 155
    sget-object v0, Lcom/sea_monster/dao/identityscope/IdentityScopeType;->None:Lcom/sea_monster/dao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/sea_monster/dao/identityscope/IdentityScopeType;->Session:Lcom/sea_monster/dao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_2

    .line 158
    iget-boolean v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->keyIsNumeric:Z

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    invoke-direct {v0}, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Lcom/sea_monster/dao/identityscope/IdentityScopeObject;

    invoke-direct {v0}, Lcom/sea_monster/dao/identityscope/IdentityScopeObject;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/internal/DaoConfig;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdentityScope(Lcom/sea_monster/dao/identityscope/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "identityScope":Lcom/sea_monster/dao/identityscope/IdentityScope;, "Lcom/sea_monster/dao/identityscope/IdentityScope<**>;"
    iput-object p1, p0, Lcom/sea_monster/dao/internal/DaoConfig;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    .line 151
    return-void
.end method
