.class public Lcom/sea_monster/dao/query/LazyList;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/LazyList$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;

.field private final daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/IQueryDaoAccess",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile loadedCount:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final size:I


# direct methods
.method constructor <init>(Lcom/sea_monster/dao/IQueryDaoAccess;Landroid/database/Cursor;Z)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cacheEntities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/IQueryDaoAccess",
            "<TE;>;",
            "Landroid/database/Cursor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "daoAccess":Lcom/sea_monster/dao/IQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess<TE;>;"
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 135
    iput-object p1, p0, Lcom/sea_monster/dao/query/LazyList;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    .line 136
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    .line 137
    if-eqz p3, :cond_0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    .line 145
    :cond_1
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    if-nez v1, :cond_2

    .line 146
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_2
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/sea_monster/dao/query/LazyList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/dao/query/LazyList;

    .prologue
    .line 46
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p2, "arg1":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected checkCached()V
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/sea_monster/dao/DaoException;

    const-string v1, "This operation only works with cached lazy lists"

    invoke-direct {v0, v1}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 221
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 222
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 228
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList;->loadedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sea_monster/dao/query/LazyList;->loadedCount:I

    .line 244
    iget v1, p0, Lcom/sea_monster/dao/query/LazyList;->loadedCount:I

    iget v2, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    if-ne v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    .end local v0    # "entity":Ljava/lang/Object;, "TE;"
    :cond_1
    :goto_0
    return-object v0

    .line 249
    .restart local v0    # "entity":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 254
    .end local v0    # "entity":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadedCount()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList;->loadedCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 269
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 270
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadedCompletely()Z
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList;->loadedCount:I

    iget v1, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    const/4 v1, 0x0

    .line 280
    new-instance v0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;

    invoke-direct {v0, p0, v1, v1}, Lcom/sea_monster/dao/query/LazyList$LazyIterator;-><init>(Lcom/sea_monster/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 285
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 286
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CloseableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    const/4 v1, 0x0

    .line 291
    new-instance v0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;

    invoke-direct {v0, p0, v1, v1}, Lcom/sea_monster/dao/query/LazyList$LazyIterator;-><init>(Lcom/sea_monster/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    new-instance v0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sea_monster/dao/query/LazyList$LazyIterator;-><init>(Lcom/sea_monster/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public listIteratorAutoClose()Lcom/sea_monster/dao/query/CloseableListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CloseableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    new-instance v0, Lcom/sea_monster/dao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sea_monster/dao/query/LazyList$LazyIterator;-><init>(Lcom/sea_monster/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method protected loadEntity(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 260
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    iget-object v2, p0, Lcom/sea_monster/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/sea_monster/dao/IQueryDaoAccess;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading of entity failed (null) at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_0
    return-object v0
.end method

.method public loadRemaining()V
    .locals 3

    .prologue
    .line 154
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->checkCached()V

    .line 155
    iget-object v2, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/query/LazyList;->get(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public peak(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 311
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    iget v0, p0, Lcom/sea_monster/dao/query/LazyList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->checkCached()V

    .line 337
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 346
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/sea_monster/dao/query/LazyList;, "Lcom/sea_monster/dao/query/LazyList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/LazyList;->loadRemaining()V

    .line 352
    iget-object v0, p0, Lcom/sea_monster/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
