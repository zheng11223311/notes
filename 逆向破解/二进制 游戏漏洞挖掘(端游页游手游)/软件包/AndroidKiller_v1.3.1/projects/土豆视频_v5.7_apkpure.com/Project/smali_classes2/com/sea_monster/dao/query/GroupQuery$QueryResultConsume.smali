.class public interface abstract Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume;
.super Ljava/lang/Object;
.source "GroupQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/GroupQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryResultConsume"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T3:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getQueryResult(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT3;"
        }
    .end annotation
.end method
