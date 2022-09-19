.class public Lcom/luajava/LuaObject;
.super Ljava/lang/Object;
.source "LuaObject.java"


# instance fields
.field protected L:Lcom/luajava/LuaState;

.field protected ref:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 3
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Lcom/luajava/LuaObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "LuaStates must be the same!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    .line 153
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    .line 154
    invoke-virtual {p2}, Lcom/luajava/LuaObject;->push()V

    .line 155
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)V

    .line 156
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    .line 157
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    .line 158
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    .line 159
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V
    .locals 4
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    .line 120
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    .line 124
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->pushNumber(D)V

    .line 125
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)V

    .line 126
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    .line 127
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    .line 128
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    .line 91
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    .line 97
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)V

    .line 99
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    .line 100
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    .line 101
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    .line 102
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 1
    .param p1, "L"    # Lcom/luajava/LuaState;
    .param p2, "index"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    monitor-enter p1

    .line 173
    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    .line 175
    invoke-direct {p0, p2}, Lcom/luajava/LuaObject;->registerValue(I)V

    .line 176
    monitor-exit p1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .locals 1
    .param p1, "L"    # Lcom/luajava/LuaState;
    .param p2, "globalName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    monitor-enter p1

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    .line 71
    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 72
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->pop(I)V

    .line 74
    monitor-exit p1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerValue(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushValue(I)V

    .line 198
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    sget-object v3, Lcom/luajava/LuaState;->LUA_REGISTRYINDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->Lref(I)I

    move-result v0

    .line 199
    .local v0, "key":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/luajava/LuaObject;->ref:Ljava/lang/Integer;

    .line 200
    monitor-exit v2

    .line 201
    return-void

    .line 200
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public call([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 11
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "nres"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v8, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v8

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v7

    if-nez v7, :cond_0

    .line 405
    new-instance v7, Lcom/luajava/LuaException;

    const-string v9, "Invalid object. Not a function, table or userdata ."

    invoke-direct {v7, v9}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 470
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 407
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v7}, Lcom/luajava/LuaState;->getTop()I

    move-result v6

    .line 408
    .local v6, "top":I
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 410
    if-eqz p1, :cond_1

    .line 412
    array-length v2, p1

    .line 413
    .local v2, "nargs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 415
    aget-object v3, p1, v1

    .line 416
    .local v3, "obj":Ljava/lang/Object;
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v7, v3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "i":I
    .end local v2    # "nargs":I
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 422
    .restart local v2    # "nargs":I
    :cond_2
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, p2, v9}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    .line 424
    .local v0, "err":I
    if-eqz v0, :cond_7

    .line 427
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/luajava/LuaState;->pop(I)V

    .line 435
    :goto_1
    sget-object v7, Lcom/luajava/LuaState;->LUA_ERRRUN:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Runtime error. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    :goto_2
    new-instance v7, Lcom/luajava/LuaException;

    invoke-direct {v7, v5}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 433
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1

    .line 439
    :cond_4
    sget-object v7, Lcom/luajava/LuaState;->LUA_ERRMEM:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v7, :cond_5

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Memory allocation error. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 443
    :cond_5
    sget-object v7, Lcom/luajava/LuaState;->LUA_ERRERR:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v7, :cond_6

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while running the error handler function. "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 449
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lua Error code "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 455
    .end local v5    # "str":Ljava/lang/String;
    :cond_7
    sget-object v7, Lcom/luajava/LuaState;->LUA_MULTRET:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne p2, v7, :cond_8

    .line 456
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v7}, Lcom/luajava/LuaState;->getTop()I

    move-result v7

    sub-int p2, v7, v6

    .line 457
    :cond_8
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v7}, Lcom/luajava/LuaState;->getTop()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v7, p2, :cond_9

    .line 459
    new-instance v7, Lcom/luajava/LuaException;

    const-string v9, "Invalid Number of Results ."

    invoke-direct {v7, v9}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 462
    :cond_9
    new-array v4, p2, [Ljava/lang/Object;

    .line 464
    .local v4, "res":[Ljava/lang/Object;
    move v1, p2

    .restart local v1    # "i":I
    :goto_3
    if-lez v1, :cond_a

    .line 466
    add-int/lit8 v7, v1, -0x1

    iget-object v9, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v7

    .line 467
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/luajava/LuaState;->pop(I)V

    .line 464
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 469
    :cond_a
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public createProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "implem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v5, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v5

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 531
    new-instance v4, Lcom/luajava/LuaException;

    const-string v6, "Invalid Object. Must be Table."

    invoke-direct {v4, v6}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 541
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 533
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Class;

    .line 535
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    new-instance v0, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v0, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    .line 540
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method protected finalize()V
    .locals 8

    .prologue
    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    sget-object v3, Lcom/luajava/LuaState;->LUA_REGISTRYINDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/luajava/LuaObject;->ref:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/luajava/LuaState;->LunRef(II)V

    .line 211
    :cond_0
    monitor-exit v2

    .line 217
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to release object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/luajava/LuaObject;->ref:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoolean()Z
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 342
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v0

    .line 343
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 344
    monitor-exit v2

    return v0

    .line 345
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getField(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0, p1}, Lcom/luajava/LuaState;->getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getNumber()D
    .locals 5

    .prologue
    .line 350
    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v3

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 353
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    .line 354
    .local v0, "db":D
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/luajava/LuaState;->pop(I)V

    .line 355
    monitor-exit v3

    return-wide v0

    .line 356
    .end local v0    # "db":D
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 375
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 377
    monitor-exit v2

    return-object v0

    .line 378
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 364
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 366
    monitor-exit v2

    return-object v0

    .line 367
    .end local v0    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBoolean()Z
    .locals 4

    .prologue
    .line 240
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 243
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v0

    .line 244
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 245
    monitor-exit v2

    return v0

    .line 246
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFunction()Z
    .locals 4

    .prologue
    .line 273
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 276
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    .line 277
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 278
    monitor-exit v2

    return v0

    .line 279
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isJavaFunction()Z
    .locals 4

    .prologue
    .line 295
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 298
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isJavaFunction(I)Z

    move-result v0

    .line 299
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 300
    monitor-exit v2

    return v0

    .line 301
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isJavaObject()Z
    .locals 4

    .prologue
    .line 284
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 287
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    .line 288
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 289
    monitor-exit v2

    return v0

    .line 290
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNil()Z
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 232
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v0

    .line 233
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 234
    monitor-exit v2

    return v0

    .line 235
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNumber()Z
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 254
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v0

    .line 255
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 256
    monitor-exit v2

    return v0

    .line 257
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isString()Z
    .locals 4

    .prologue
    .line 262
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 265
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    .line 266
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 267
    monitor-exit v2

    return v0

    .line 268
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTable()Z
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 309
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    .line 310
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 311
    monitor-exit v2

    return v0

    .line 312
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserdata()Z
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 320
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v0

    .line 321
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 322
    monitor-exit v2

    return v0

    .line 323
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public push()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    sget-object v1, Lcom/luajava/LuaState;->LUA_REGISTRYINDEX:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->ref:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->rawGetI(II)V

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    const-string v1, "nil"
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :goto_0
    return-object v1

    .line 494
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 496
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getNumber()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 498
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;
    :try_end_6
    .catch Lcom/luajava/LuaException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 500
    :cond_3
    :try_start_8
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    const-string v1, "Lua Function"
    :try_end_8
    .catch Lcom/luajava/LuaException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 502
    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaObject()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 503
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catch Lcom/luajava/LuaException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 504
    :cond_5
    :try_start_c
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 505
    const-string v1, "Userdata"
    :try_end_c
    .catch Lcom/luajava/LuaException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    .line 506
    :cond_6
    :try_start_e
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 507
    const-string v1, "Lua Table"
    :try_end_e
    .catch Lcom/luajava/LuaException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    .line 508
    :cond_7
    :try_start_10
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaFunction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 509
    const-string v1, "Java Function"
    :try_end_10
    .catch Lcom/luajava/LuaException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit v2

    goto :goto_0

    .line 511
    :cond_8
    monitor-exit v2

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Lcom/luajava/LuaException;
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0
.end method

.method public type()I
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    .line 331
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    .line 332
    .local v0, "type":I
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    .line 333
    monitor-exit v2

    return v0

    .line 334
    .end local v0    # "type":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
