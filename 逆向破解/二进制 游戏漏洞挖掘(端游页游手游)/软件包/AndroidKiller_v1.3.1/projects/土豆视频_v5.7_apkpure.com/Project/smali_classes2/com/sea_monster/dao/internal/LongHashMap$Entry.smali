.class final Lcom/sea_monster/dao/internal/LongHashMap$Entry;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/internal/LongHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final key:J

.field next:Lcom/sea_monster/dao/internal/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/internal/LongHashMap$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/Object;Lcom/sea_monster/dao/internal/LongHashMap$Entry;)V
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/sea_monster/dao/internal/LongHashMap$Entry",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/sea_monster/dao/internal/LongHashMap$Entry;, "Lcom/sea_monster/dao/internal/LongHashMap$Entry<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "next":Lcom/sea_monster/dao/internal/LongHashMap$Entry;, "Lcom/sea_monster/dao/internal/LongHashMap$Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/sea_monster/dao/internal/LongHashMap$Entry;->key:J

    .line 38
    iput-object p3, p0, Lcom/sea_monster/dao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 39
    iput-object p4, p0, Lcom/sea_monster/dao/internal/LongHashMap$Entry;->next:Lcom/sea_monster/dao/internal/LongHashMap$Entry;

    .line 40
    return-void
.end method
