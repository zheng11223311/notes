.class public Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
.super Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateCondition"
.end annotation


# instance fields
.field public final op:Ljava/lang/String;

.field public final property:Lcom/sea_monster/dao/Property;


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->property:Lcom/sea_monster/dao/Property;

    .line 300
    iput-object p2, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->op:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V
    .locals 2
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->property:Lcom/sea_monster/dao/Property;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->op:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 304
    invoke-static {p1, p3}, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->checkValueForType(Lcom/sea_monster/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 305
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->property:Lcom/sea_monster/dao/Property;

    .line 306
    iput-object p2, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->op:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lcom/sea_monster/dao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 310
    invoke-static {p1, p3}, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->checkValuesForType(Lcom/sea_monster/dao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 311
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->property:Lcom/sea_monster/dao/Property;

    .line 312
    iput-object p2, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->op:Ljava/lang/String;

    .line 313
    return-void
.end method

.method private static checkValueForType(Lcom/sea_monster/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "property"    # Lcom/sea_monster/dao/Property;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    new-instance v3, Lcom/sea_monster/dao/DaoException;

    const-string v4, "Illegal value: found array, but simple object required"

    invoke-direct {v3, v4}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    .line 256
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/Date;

    if-ne v2, v5, :cond_3

    .line 257
    instance-of v3, p1, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 258
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 285
    :cond_1
    :goto_0
    return-object p1

    .line 259
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 262
    new-instance v3, Lcom/sea_monster/dao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal date value: expected java.util.Date or Long for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_3
    iget-object v5, p0, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 265
    :cond_4
    instance-of v5, p1, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 266
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 267
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_7

    move-object v3, p1

    .line 268
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 269
    .local v0, "intValue":I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    .line 270
    new-instance v3, Lcom/sea_monster/dao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal boolean value: numbers must be 0 or 1, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    .end local v0    # "intValue":I
    :cond_7
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 273
    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "stringValue":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 276
    :cond_8
    const-string v4, "FALSE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    .line 279
    :cond_9
    new-instance v3, Lcom/sea_monster/dao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insesnsitive), but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static checkValuesForType(Lcom/sea_monster/dao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lcom/sea_monster/dao/Property;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 290
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->checkValueForType(Lcom/sea_monster/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->property:Lcom/sea_monster/dao/Property;

    iget-object v0, v0, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    return-void
.end method
