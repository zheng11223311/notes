.class public Lcom/sea_monster/dao/query/LazyList$LazyIterator;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Lcom/sea_monster/dao/query/CloseableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/LazyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sea_monster/dao/query/CloseableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final closeWhenDone:Z

.field private index:I

.field final synthetic this$0:Lcom/sea_monster/dao/query/LazyList;


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/query/LazyList;IZ)V
    .locals 0
    .param p2, "startLocation"    # I
    .param p3, "closeWhenDone"    # Z

    .prologue
    .line 51
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iput-object p1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    .line 53
    iput-boolean p3, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->closeWhenDone:Z

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/LazyList;->close()V

    .line 122
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    invoke-static {v1}, Lcom/sea_monster/dao/query/LazyList;->access$000(Lcom/sea_monster/dao/query/LazyList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    iget-object v2, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    invoke-static {v2}, Lcom/sea_monster/dao/query/LazyList;->access$000(Lcom/sea_monster/dao/query/LazyList;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    iget v2, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/query/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    .line 108
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    iget-object v2, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    invoke-static {v2}, Lcom/sea_monster/dao/query/LazyList;->access$000(Lcom/sea_monster/dao/query/LazyList;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->closeWhenDone:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->close()V

    .line 111
    :cond_1
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    if-gtz v1, :cond_0

    .line 76
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 78
    :cond_0
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    .line 79
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->this$0:Lcom/sea_monster/dao/query/LazyList;

    iget v2, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/query/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList$LazyIterator;, "Lcom/sea_monster/dao/query/LazyList<TE;>.LazyIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
