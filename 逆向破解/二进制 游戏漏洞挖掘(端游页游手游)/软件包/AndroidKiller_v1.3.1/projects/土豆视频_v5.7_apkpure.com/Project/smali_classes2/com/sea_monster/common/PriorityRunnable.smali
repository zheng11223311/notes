.class public abstract Lcom/sea_monster/common/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sea_monster/common/PriorityRunnable;",
        ">;"
    }
.end annotation


# static fields
.field public static final HIGH:I = 0x1

.field public static final LOW:I = -0x1

.field public static final NORMAL:I = 0x0

.field public static final VERY_HIGH:I = 0x2


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    .line 14
    iput v0, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    .line 18
    iput p1, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    .line 19
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sea_monster/common/PriorityRunnable;)I
    .locals 2
    .param p1, "another"    # Lcom/sea_monster/common/PriorityRunnable;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/sea_monster/common/PriorityRunnable;->getPriority()I

    move-result v0

    iget v1, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3
    check-cast p1, Lcom/sea_monster/common/PriorityRunnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sea_monster/common/PriorityRunnable;->compareTo(Lcom/sea_monster/common/PriorityRunnable;)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sea_monster/common/PriorityRunnable;->priority:I

    return v0
.end method
