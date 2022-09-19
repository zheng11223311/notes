.class public Lcom/sea_monster/dao/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public asName:Ljava/lang/String;

.field public final columnName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final ordinal:I

.field public final primaryKey:Z

.field public final tableName:Ljava/lang/String;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ordinal"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "primaryKey"    # Z
    .param p5, "columnName"    # Ljava/lang/String;
    .param p6, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sea_monster/dao/Property;->ordinal:I

    .line 42
    iput-object p2, p0, Lcom/sea_monster/dao/Property;->type:Ljava/lang/Class;

    .line 43
    iput-object p3, p0, Lcom/sea_monster/dao/Property;->name:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/sea_monster/dao/Property;->primaryKey:Z

    .line 45
    iput-object p5, p0, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public andEq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 207
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "&?"

    const-string v2, "=?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public andEq(Ljava/lang/Object;Ljava/util/Objects;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/util/Objects;

    .prologue
    .line 214
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "&?"

    const-string v2, "=?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public andUneq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 237
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "&?"

    const-string v2, "<>?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public andUneq(Ljava/lang/Object;Ljava/util/Objects;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/util/Objects;

    .prologue
    .line 244
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "&?"

    const-string v2, "<>?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public as(Ljava/lang/String;)Lcom/sea_monster/dao/Property;
    .locals 0
    .param p1, "asName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sea_monster/dao/Property;->asName:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public between(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 3
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 109
    .local v0, "values":[Ljava/lang/Object;
    new-instance v1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v2, " BETWEEN ? AND ?"

    invoke-direct {v1, p0, v2, v0}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public eq(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 78
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "="

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public eq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public ge(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 174
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">="

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public ge(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 170
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">=?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public gt(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 152
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public gt(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 148
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, ">?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public in(Ljava/util/Collection;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/sea_monster/dao/query/WhereCondition;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "inValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/Property;->in([Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs in([Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 3
    .param p1, "inValues"    # [Ljava/lang/Object;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sea_monster/dao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    new-instance v1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isNotNull()Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NOT NULL"

    invoke-direct {v0, p0, v1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNull()Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NULL"

    invoke-direct {v0, p0, v1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public le(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 186
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<="

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public le(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 182
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<=?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public like(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 101
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " LIKE "

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public like(Ljava/lang/String;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, " LIKE ?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public lt(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 163
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public lt(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 159
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notEq(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 89
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<>"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public notEq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 85
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    const-string v1, "<>?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notIn(Ljava/util/Collection;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/sea_monster/dao/query/WhereCondition;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/Property;->notIn([Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs notIn([Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 3
    .param p1, "notInValues"    # [Ljava/lang/Object;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sea_monster/dao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public obtainUpdateCondition(Lcom/sea_monster/dao/Property;)Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    .locals 2
    .param p1, "value"    # Lcom/sea_monster/dao/Property;

    .prologue
    .line 67
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;

    const-string v1, "="

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Lcom/sea_monster/dao/Property;)V

    return-object v0
.end method

.method public obtainUpdateCondition(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public orEq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 222
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "|?"

    const-string v2, "=?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public orEq(Ljava/lang/Object;Ljava/util/Objects;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/util/Objects;

    .prologue
    .line 229
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "|?"

    const-string v2, "=?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public orUneq(Ljava/lang/Object;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 252
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "|?"

    const-string v2, "<>?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public orUneq(Ljava/lang/Object;Ljava/util/Objects;)Lcom/sea_monster/dao/query/WhereCondition;
    .locals 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/util/Objects;

    .prologue
    .line 259
    new-instance v0, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;

    const-string v1, "|?"

    const-string v2, "<>?&-1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;-><init>(Lcom/sea_monster/dao/Property;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sea_monster/dao/Property;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
