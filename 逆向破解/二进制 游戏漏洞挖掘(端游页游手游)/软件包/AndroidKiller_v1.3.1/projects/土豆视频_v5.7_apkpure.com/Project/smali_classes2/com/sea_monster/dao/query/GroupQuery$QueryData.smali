.class final Lcom/sea_monster/dao/query/GroupQuery$QueryData;
.super Lcom/sea_monster/dao/query/AbstractQueryData;
.source "GroupQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/GroupQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sea_monster/dao/query/AbstractQueryData",
        "<TT2;",
        "Lcom/sea_monster/dao/query/GroupQuery",
        "<TT2;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT2;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sea_monster/dao/query/AbstractQueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/GroupQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/AbstractDao;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lcom/sea_monster/dao/query/GroupQuery$1;

    .prologue
    .line 17
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT2;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sea_monster/dao/query/GroupQuery$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createQuery()Lcom/sea_monster/dao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT2;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->createQuery()Lcom/sea_monster/dao/query/GroupQuery;

    move-result-object v0

    return-object v0
.end method

.method protected createQuery()Lcom/sea_monster/dao/query/GroupQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT2;>;"
    new-instance v0, Lcom/sea_monster/dao/query/GroupQuery;

    iget-object v2, p0, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v3, p0, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->sql:Ljava/lang/String;

    iget-object v1, p0, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/dao/query/GroupQuery;-><init>(Lcom/sea_monster/dao/query/GroupQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/GroupQuery$1;)V

    return-object v0
.end method
