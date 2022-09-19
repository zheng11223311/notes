.class public interface abstract Lcom/sea_monster/dao/query/WhereCondition;
.super Ljava/lang/Object;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/WhereCondition$UpdateCondition;,
        Lcom/sea_monster/dao/query/WhereCondition$StringCondition;,
        Lcom/sea_monster/dao/query/WhereCondition$PropertySelfCondition;,
        Lcom/sea_monster/dao/query/WhereCondition$PropertyCondition;,
        Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;
    }
.end annotation


# virtual methods
.method public abstract appendTo(Ljava/lang/StringBuilder;)V
.end method

.method public abstract appendValuesTo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
