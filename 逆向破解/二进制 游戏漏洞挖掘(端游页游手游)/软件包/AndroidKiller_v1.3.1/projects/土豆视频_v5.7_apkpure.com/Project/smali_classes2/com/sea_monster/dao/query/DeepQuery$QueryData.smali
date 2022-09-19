.class final Lcom/sea_monster/dao/query/DeepQuery$QueryData;
.super Lcom/sea_monster/dao/query/AbstractQueryData;
.source "DeepQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/DeepQuery;
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
        "Lcom/sea_monster/dao/query/DeepQuery",
        "<TT2;>;>;"
    }
.end annotation


# instance fields
.field private final limitPosition:I

.field private final offsetPosition:I


# direct methods
.method constructor <init>(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .param p4, "limitPosition"    # I
    .param p5, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery$QueryData;, "Lcom/sea_monster/dao/query/DeepQuery$QueryData<TT2;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT2;*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sea_monster/dao/query/AbstractQueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    iput p4, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->limitPosition:I

    .line 24
    iput p5, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->offsetPosition:I

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic createQuery()Lcom/sea_monster/dao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery$QueryData;, "Lcom/sea_monster/dao/query/DeepQuery$QueryData<TT2;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->createQuery()Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    return-object v0
.end method

.method protected createQuery()Lcom/sea_monster/dao/query/DeepQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeepQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery$QueryData;, "Lcom/sea_monster/dao/query/DeepQuery$QueryData<TT2;>;"
    new-instance v0, Lcom/sea_monster/dao/query/DeepQuery;

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->dao:Lcom/sea_monster/dao/AbstractDao;

    check-cast v2, Lcom/sea_monster/dao/AbstractDeepDao;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->sql:Ljava/lang/String;

    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->limitPosition:I

    iget v6, p0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->offsetPosition:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sea_monster/dao/query/DeepQuery;-><init>(Lcom/sea_monster/dao/query/DeepQuery$QueryData;Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;IILcom/sea_monster/dao/query/DeepQuery$1;)V

    return-object v0
.end method
